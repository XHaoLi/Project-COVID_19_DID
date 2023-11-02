
xtset idind year

Table 1 Descriptive statistics
sum working hours ln_hours telework gender age age_group edu children nli_quintile

* Export Table 1 Descriptive statistics
logout , save(mytable) word replace :sum working hours ln_hours telework gender age age_group edu children nli_quintile

* Figure 1  Descriptive Statistics of Covariates
tab gender
tab age_group
tab edu
tab children
tab nli_quintile

*Figure 2 Employment comparison
xttrans working, fr

* Figure 3 The demographic profile of employment
bysort working gender: sum working
bysort working age_group: sum working
bysort working edu: sum working
bysort working children: sum working
bysort working nli_quintile: sum working

* Figure 4 Comparison of Average monthly working hours
bysort year: sum hours
bysort gender: sum hours
bysort age_group: sum hours
bysort edu: sum hours
bysort children: sum hours
bysort nli_quintile: sum hours

* Figure 5 Comparison of teleworkability
tab dum_tech_tele
tab telework
tab internet


* Figure 6 The demographic profile of teleworkability
bysort telework gender: sum telework
bysort telework age_group: sum telework
bysort telework edu: sum telework
bysort telework children: sum telework
bysort telework nli_quintile: sum telework

* Figure 7 Treatment and Outcomes
bysort telework : sum hours
bysort telework : sum working

* Figure 8 Treatment and employment
bysort telework year : sum working

* Figure 9 Treatment and working hours
bysort telework year: sum hours



