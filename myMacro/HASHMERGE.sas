%macro hashmerge(largeds, smallds, byvars, extravars, outds) / des="Faster than SQL, but dsout not sorted.";
/*byvars, extravars: smallds variables.*/
    data &outds;
        call missing(%sepbycomma(&extravars));

        if _N_=1 then
            do;
                declare hash h(dataset:"&smallds");
                h.defineKey(%enquote(&byvars));
                h.defineData(%enquote(&extravars));
                h.defineDone();
            end;

        set &largeds;

        if h.find()=0;
    run;

%mend;
