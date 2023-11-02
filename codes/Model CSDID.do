*****CSDID*****

*Xianghao Li

************************************************
********************Start***********************
************************************************

*ssc install drdid, all replace
*ssc install csdid, all replace
*ssc install asdoc, replace

****	Data 	****

**	Define path
cd "/Users/Xianghao/Desktop/Xianghao_Li_Thesis/Data"

**	Import data
use Data.dta, clear

**	Define global temporary
global xlist gender age_group edu nli_quintile children

************************************************

****	CSDID (outcome: working)	 ****

	** Table 2 The teleworkability on employment **
**	FE	
asdoc xtdidregress (working) (telework), group(idind) time(year), nest save(W PSM-DID.doc) title(PSM-DID: Working) replace

** CSDID
asdoc csdid working $xlist, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(W PSM-DID.doc) append
********

***	CSDID Robust check(outcome: hours) ***

	** Table 3 The teleworkability on employment (gender;edu)**
** CSDID full
asdoc csdid working $xlist, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(W GE PSM-DID_Robust.doc) title(GE PSM-DID Robust check:Working) replace
**	PSM-DID gender==1
asdoc csdid working $xlist if gender==1, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(W GE PSM-DID_Robust.doc) append
**	PSM-DID gender==0
asdoc csdid working $xlist if gender==0, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(W GE PSM-DID_Robust.doc) append
**	PSM-DID edu==1
asdoc csdid working $xlist if edu==1, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(W GE PSM-DID_Robust.doc) append
**	PSM-DID edu==2
asdoc csdid working $xlist if edu==2, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(W GE PSM-DID_Robust.doc) append
**	PSM-DID edu==3
asdoc csdid working $xlist if edu==3, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(W GE PSM-DID_Robust.doc) append


	** Table 4 The teleworkability on employment (childen;age)**
** CSDID full
asdoc csdid working $xlist, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(W CA PSM-DID_Robust.doc) title(CA PSM-DID Robust check:Working) replace
**	PSM-DID childen==1
asdoc csdid working $xlist if children==1, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(W CA PSM-DID_Robust.doc) append
**	PSM-DID childen==0
asdoc csdid working $xlist if children==0, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(W CA PSM-DID_Robust.doc) append
**	PSM-DID age_group==1
asdoc csdid working $xlist if age_group==1, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(W CA PSM-DID_Robust.doc) append
**	PSM-DID age_group==0
asdoc csdid working $xlist if age_group==0, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(W CA PSM-DID_Robust.doc) append

************************************************

****	CSDID (outcome: working hours) 	****

	** Table 5 The teleworkability on working hours**
**	FE
asdoc xtdidregress (ln_hours) (telework), group(idind) time(year), nest save(H PSM-DID.doc) title(PSM-DID:Working Hours) replace
** PSM-DID
asdoc csdid ln_hours $xlist, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(H PSM-DID.doc) append


*** CSDID Robust check(outcome: working hours) ***

	** Table 6 The teleworkability on working hours (gender;edu)**	
** CSDID full
asdoc csdid ln_hours $xlist, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(H GE PSM-DID_Robust.doc) title(GE PSM-DID Robust check:Working Hours) replace
**	CSDID gender==1
asdoc csdid ln_hours $xlist if gender==1, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(H GE PSM-DID_Robust.doc) append
**	CSDID gender==0
asdoc csdid ln_hours $xlist if gender==0, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(H GE PSM-DID_Robust.doc) append
**	CSDID edu==1
asdoc csdid ln_hours $xlist if edu==1, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(H GE PSM-DID_Robust.doc) append
**	CSDID edu==2
asdoc csdid ln_hours $xlist if edu==2, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(H GE PSM-DID_Robust.doc) append
**	CSDID edu==3
asdoc csdid ln_hours $xlist if edu==3, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(H GE PSM-DID_Robust.doc) append	

	** Table 7 The teleworkability on working hours (childen;age)**
** CSDID full
asdoc csdid ln_hours $xlist, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(H CA PSM-DID_Robust.doc) title(CA PSM-DID Robust check:Working Hours) replace
**	CSDID childen==1
asdoc csdid ln_hours $xlist if children==1, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(H CA PSM-DID_Robust.doc) append
**	CSDID childen==0
asdoc csdid ln_hours $xlist if children==0, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(H CA PSM-DID_Robust.doc) append
**	CSDID age_group==1
asdoc csdid ln_hours $xlist if age_group==1, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(H CA PSM-DID_Robust.doc) append
**	CSDID age_group==0
asdoc csdid ln_hours $xlist if age_group==0, ivar(idind) time(year) gvar(first_treat) notyet method(dripw) agg(simple), nest save(H CA PSM-DID_Robust.doc) append

*The way to display the results of ln_hours - "display exp(ATT)-1"
		 
************************************************
*********************End************************
************************************************
