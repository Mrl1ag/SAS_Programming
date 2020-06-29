libname out "~/EPG194/output";

data out.fox;
	set pg1.np_species;
	where Category="Mammal" and Common_Names contains "Fox" and Common_Names 
		not="Squirrel";
	drop Category Record_Status Occurrence Nativeness;
run;

proc sort data=out.fox;
	by Common_Names;
run;
