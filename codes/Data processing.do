
	*** Dataset ***

clear 

* Define path
cd "/Users/Xianghao/Desktop/Xianghao_Li_Thesis/Data"

** Household data **

* Read raw RLMS household data
use RLMS_HH_1994_2021_eng_DTA.dta,clear

* Year or Round (2019-2020)
drop if ID_W<28 | ID_W>29

* Keep the variable that we use
keep ID_W ID_H F14 NFM
rename (ID_W ID_H F14 NFM) (id_w id_h hh_income nfm) //household income and number of family member

* Save household dataset
save data_hh.dta,replace

*********************

** Individual data **

clear

* Read raw RLMS individual data
use RLMS_IND_1994_2021_2022_08_21_1_v3_eng_DTA.dta,clear

* Year or Round (2019-2020)
drop if year<2019 | year>2020

* Save individual dataset
save data_indiv_2019_2020.dta,replace

clear

** Merge household data into individual data **

* Read individual dataset
use data_indiv_2019_2020.dta,clear

* Merge data
merge m:1 id_w id_h using data_hh.dta

keep if _merge==3
drop _merge
 
* Save merged dataset
save merged_2019_2020.dta,replace

************************************************************

	*** Variables ***

* Read merged dataset
use merged_2019_2020.dta,clear

xtset idind year

	** Treatment **
	
** Define technical telework ability

*Run "Setting tele.do"// Assignment according to occupation, see Sostero et al. (2020)

* Define techical telework ability
gen technical_tele=teleworkability
drop teleworkability

* Define dummy technical telework ability
generate dum_tech_tele=1 if technical_tele>0.4&technical_tele<=1
replace dum_tech_tele=0 if technical_tele>=0&technical_tele<=0.4

* Irreversibility of Treatment (technical telework ability)
gen byte tech_missing=missing(dum_tech_tele)

by idind tech_missing (dum_tech_tele), sort: gen byte tech_changed=(dum_tech_tele[1] != dum_tech_tele[_N]) if tech_missing == 0
by idind (tech_missing dum_tech_tele): replace tech_changed=tech_changed[1]

bysort idind(year): gen ad_dm_tech=dum_tech_tele if tech_changed==1&dum_tech_tele[1]==0&dum_tech_tele[2]==1
bysort idind(year): replace ad_dm_tech=dum_tech_tele[1] if tech_changed==1&dum_tech_tele[1]==1&dum_tech_tele[2]==0
bysort idind(year): replace ad_dm_tech=dum_tech_tele if tech_changed!=1

* Define "internet" (Using internet for work=1)
generate internet=1 if j125_2==1
replace internet=0 if j125_2==2
replace internet=. if j125_2==99999997
replace internet=. if j125_2==99999998
replace internet=. if j125_2==99999999

* Irreversibility of Treatment (internet)
gen byte int_missing=missing(internet)

by idind int_missing (internet), sort: gen byte int_changed=(internet[1] != internet[_N]) if int_missing == 0
by idind (int_missing internet): replace int_changed=int_changed[1]

bysort idind(year): gen ad_int=internet if int_changed==1&internet[1]==0&internet[2]==1
bysort idind(year): replace ad_int=internet[1] if int_changed==1&internet[1]==1&internet[2]==0
bysort idind(year): replace ad_int=internet if int_changed!=1

* Combine two dummy  indices(technical telework ability, internet)
generate tele_comb=1 if ad_dm_tech==1&ad_int==1
replace tele_comb=0 if ad_dm_tech==1&ad_int==0
replace tele_comb=0 if ad_dm_tech==0&ad_int==0
replace tele_comb=0 if ad_dm_tech==0&ad_int==1
replace tele_comb=0 if ad_dm_tech==.&ad_int==0
replace tele_comb=0 if ad_dm_tech==0&ad_int==.

* Check Irreversibility of Treatment(telework)
gen byte telework_missing=missing(tele_comb)
by idind telework_missing (tele_comb), sort: gen byte tele_changed=(tele_comb[1] != tele_comb[_N]) if telework_missing == 0
by idind (telework_missing tele_comb): replace tele_changed=tele_changed[1]

bysort idind(year): gen telework=tele_comb if tele_changed==1&tele_comb[1]==0&tele_comb[2]==1
bysort idind(year): replace telework=tele_comb[1] if tele_changed==1&tele_comb[1]==1&tele_comb[2]==0

* Define treatment telework
bysort idind(year): replace telework=tele_comb if tele_changed!=1

* Define first treat
egen first_treat=csgvar(telework), tvar(year) ivar(idind)

***********************************

	** Outcomes **
	
 * (1) Employment
 
* Define dummy variable "working" (working=1, not working=0)
generate working=1 if j1==1
replace working=0 if j1==5

* Drop individuals who did not work in both periods 
bysort idind (year): drop if working[1]==0 & working[2]==0

 * (2) Working hours
 
* Define continue variable "hours"
generate hours=j8 //j8(hours worked last 30 days)
replace hours=0 if hours==.
replace hours=0 if j8==99999997
replace hours=0 if j8==99999998
replace hours=0 if j8==99999999
replace hours=0 if hours>400
replace hours=0 if j8<120 //Full time worker - woking higher than 120 hours one month

* Logarithm of hours 
generate ln_hours=ln(hours+1)

***********************************

	** Covariates **

* Population of working age in Russia
drop if age<15 | age>72
* Age group
gen age_group=1 if age>=45
replace age_group=0 if age<45

* Gender (men=1, women=0)
generate gender=1 if h5==1
replace gender=0 if h5==2

* Education (primary=1 secondary=2 higher=3)
generate edu=1 if diplom<=3
replace edu=2 if diplom==4
replace edu=2 if diplom==5
replace edu=3 if diplom==6

* Number of children under 18
generate num_children=j72_173
replace num_children=0 if  j72_171==2
replace num_children=. if j72_171==99999997
replace num_children=. if j72_171==99999998
replace num_children=. if j72_171==99999999
replace num_children=. if j72_173==99999997
replace num_children=. if j72_173==99999998
replace num_children=. if j72_173==99999999
* With Children or Without Children (with=1 without=0)
gen children=1 if num_children>=1
replace children=0 if num_children<1

* Non-labour income
replace hh_income=0 if hh_income==99999997
replace hh_income=0 if hh_income==99999998
replace hh_income=0 if hh_income==99999999
replace hh_income=0 if hh_income==.
 * Individual wage
 generate wage=j10
 replace wage=0 if j10==99999997
 replace wage=0 if j10==99999998
 replace wage=0 if j10==99999999
 replace wage=0 if wage==.
 
 * Define non-labour income
 generate nl_income=(hh_income-wage)/nfm // Non-labour income = (household income - wage)/number of family member.

 * Non-labour income quintile
 xtile nli_quintile = nl_income, nq(5)

**********************************************************************

*** Keep data that may using ***
keep idind id_h year age age_group j2cod08 d3isco08 technical_tele dum_tech_tele tech_missing tech_changed ad_dm_tech int_missing int_changed ad_int j125_2 internet tele_comb telework_missing tele_changed telework first_treat j1 working j8 hours ln_hours h5 gender diplom edu j72_173 j72_171 num_children children j10 wage j60 hh_income nfm nl_income nli_quintile j4_1 

sum working hours ln_hours telework age age_group gender edu num_children children nli_quintile

save Raw_Data.dta,replace

*** Save Data ***
*use Raw_Data.dta,clear

keep idind id_h year hours ln_hours working internet telework first_treat gender age age_group edu nli_quintile num_children children

save Data.dta,replace


