ods graphics;
title;
title2 "in the Everglades";

proc freq data=pg1.np_species order=freq;
	where Species_ID like "EVER%" and  Category not="Vascular Plant";
	tables Category / nocum plots=freqplot;
run;