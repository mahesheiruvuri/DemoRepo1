//CHANGEJ JOB LOOKUPCHANGEJCL,MSGLEVEL=(2,0),CLASS=A,MSGCLASS=X,
//            NOTIFY=&SYSUID
//*********************************************************
//***    LOOKUP AND CHANGE TEXT IN FILE - JCL
//*********************************************************
//STEP01    EXEC PGM=SORT
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SORTIN    DD *
00001     student1           dept           560       01012020
00002     student2           dept           520       02022023
00003     student3           dept           540       03032023
00004     student4           depart         500       04042022
00005     student5           dept           510       01012020
/*
//SORTOUT   DD SYSOUT=*
//SYSIN     DD *
  SORT FIELDS=(1,5,CH,A)
  OUTREC FIELDS=(1,10,11,19,TRAN=LTOU,30,15,CHANGE=(15,  -
                              C'dept',C'DEPARTMENT'),    -
                              NOMATCH=(30,15),45,30)
/*
//
