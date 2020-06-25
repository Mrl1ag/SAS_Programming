# SAS_Programming

# Demo: Exploring Data with SAS Procedures

# list first 20 rows

proc print data=PG1.NP_SUMMARY (obs=20);
			var Reg Type Parkname DayVisits TentCampers RVCampers;
run;

# clculate summary statistics

proc means data=PG1.NP_SUMMARY;
			var DayVisits TentCampers RVCampers;
run;

# examine extreme values

proc univariate data=PG1.NP_SUMMARY;
			var DayVisits TentCampers RVCampers;
run;

# list unique values and frequencies

proc freq data=PG1.NP_SUMMARY;
			tables Reg Type;
run;
