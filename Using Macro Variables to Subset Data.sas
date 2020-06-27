%let ParkCode=ZION;
%let SpeciesCat=Bird;

proc freq data=pg1.np_species;
		where Species_ID like "&ParkCode%" and Category="&SpeciesCat";
		tables Abundance Conservation_Status;
run;

proc print data=pg1.np_species;
		where Species_ID like "&ParkCode%" and Category="&SpeciesCat";
		var Species_ID Category Scientific_Name Common_Names;
run;