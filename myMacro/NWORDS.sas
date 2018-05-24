/*This is faster than %QSCAN(). (Whitlock, A Personal View of SAS-L as a Teaching Tool). */
/*The very codes are different, though.*/

/* ********************************************************************************* */
/* ******************** W R D S   R E S E A R C H   M A C R O S ******************** */
/* ********************************************************************************* */
/* WRDS Macro: NWORDS                                                                */
/* Summary   : Counts the Number of Words Within a Text String                       */
/* Date      : January, 2001                                                         */
/* Author    : Mark Keintz, WRDS                                                     */
/* Variables : - INVAR: Input text string                                            */
/* ********************************************************************************* */
 
%MACRO NWORDS (INVAR) / store des="Counts number of words. Seems countw() can be used instead.";
%local N W;
 
 %let invar = %sysfunc(compbl(&invar)); 
/*compbl(): Removes multiple blanks from a character string. */

%let N = 0;
%let W = 1;
 
%do %while (%nrquote(%scan(&invar,&W,%str( ))) ^= %str());
  %let N = %eval(&N+1);
  %let W = %eval(&W+1);
%end;
 
&N
 
%MEND NWORDS;
 
/* ********************************************************************************* */
/* *************  Material Copyright Wharton Research Data Services  *************** */
/* ****************************** All Rights Reserved ****************************** */
/* ********************************************************************************* */
