%macro AddVar_RV_Nest_log(alpha=);

%let RegkeyVar = log_VaR_;
%AddVar(RegkeyVar=&RegkeyVar.,
data=tsreg_RV_&RegkeyVar.&alpha._, set=tsreg_RV_&RegkeyVar.&alpha.);

%let RegkeyVar = log_ES_;
%AddVar(RegkeyVar=&RegkeyVar.,
data=tsreg_RV_&RegkeyVar.&alpha._, set=tsreg_RV_&RegkeyVar.&alpha.);

%let RegkeyVar = log_UP_;
%AddVar(RegkeyVar=&RegkeyVar.,
data=tsreg_RV_&RegkeyVar.&alpha._, set=tsreg_RV_&RegkeyVar.&alpha.);

%let RegkeyVar = log_EUP_;
%AddVar(RegkeyVar=&RegkeyVar.,
data=tsreg_RV_&RegkeyVar.&alpha._, set=tsreg_RV_&RegkeyVar.&alpha.);

%let RegkeyVar = log_TRP_;
%AddVar(RegkeyVar=&RegkeyVar.,
data=tsreg_RV_&RegkeyVar.&alpha._, set=tsreg_RV_&RegkeyVar.&alpha.);

%let RegkeyVar = log_ETRP_;
%AddVar(RegkeyVar=&RegkeyVar.,
data=tsreg_RV_&RegkeyVar.&alpha._, set=tsreg_RV_&RegkeyVar.&alpha.);

%mend AddVar_RV_Nest_log;
