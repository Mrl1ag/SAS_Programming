title "Park Types by Region";
ods graphics on;
proc freq data=pg1.np_codelookup order=freq;
	tables Type*Region / nocol crosslist plots=freqplot(groupby=row orient=horizontal 
		scale=grouppercent);
	where Type not="Other" and Type in("National Historic Site", 
		"National Monument", "National Park");
run;
title;