%macro AddVar_Rsq_Nest(alpha=);
%let RegkeyVar = VaR_;
%AddVar(RegkeyVar=&RegkeyVar.,
data=tsreg_&RegkeyVar.&alpha._Rsq_, set=tsreg_&RegkeyVar.&alpha._Rsq);

%let RegkeyVar = ES_;
%AddVar(RegkeyVar=&RegkeyVar.,
data=tsreg_&RegkeyVar.&alpha._Rsq_, set=tsreg_&RegkeyVar.&alpha._Rsq);

%let RegkeyVar = UP_;
%AddVar(RegkeyVar=&RegkeyVar.,
data=tsreg_&RegkeyVar.&alpha._Rsq_, set=tsreg_&RegkeyVar.&alpha._Rsq);

%let RegkeyVar = EUP_;
%AddVar(RegkeyVar=&RegkeyVar.,
data=tsreg_&RegkeyVar.&alpha._Rsq_, set=tsreg_&RegkeyVar.&alpha._Rsq);

%let RegkeyVar = TRP_;
%AddVar(RegkeyVar=&RegkeyVar.,
data=tsreg_&RegkeyVar.&alpha._Rsq_, set=tsreg_&RegkeyVar.&alpha._Rsq);

%let RegkeyVar = ETRP_;
%AddVar(RegkeyVar=&RegkeyVar.,
data=tsreg_&RegkeyVar.&alpha._Rsq_, set=tsreg_&RegkeyVar.&alpha._Rsq);

%mend AddVar_Rsq_Nest;
