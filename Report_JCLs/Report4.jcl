//REPORT4 JOB REPORTJCL,MSGLEVEL=(2,0),CLASS=A,MSGCLASS=X,
//            NOTIFY=&SYSUID
//*********************************************************
//***    updating Counts and Totals in Trailer
//*********************************************************
//STEP01    EXEC PGM=SORT
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SORTIN    DD *
H 2023/03/20
REC 1     student1           dept1          560
REC 2     student2           dept2          520
REC 3     student3           dept1          540
REC 4     student4           dept2          500
REC 5     student5           dept3          510
REC 6     student6           dept3          550
REC 7     student7           dept1          530
REC 8     student8           dept3          510
REC 9     student9           dept2          520
REC10     student10          dept2          505
REC11     student11          dept3          510
Trailer 00011
/*
//OUTPUT1   DD SYSOUT=*
//OUTPUT2   DD SYSOUT=*
//OUTPUT3   DD SYSOUT=*
//SYSIN     DD *
  OPTION COPY
  OUTFIL FNAMES=OUTPUT1,INCLUDE=(30,5,CH,EQ,C'dept1'),
         IFTRAIL=(HD=YES,TRLID=(1,1,CH,EQ,C'T'),
   TRLUPD=(10:COUNT=(M11,LENGTH=4),16:TOT=(45,3,ZD,TO=ZD,LENGTH=6)))
  OUTFIL FNAMES=OUTPUT2,INCLUDE=(30,5,CH,EQ,C'dept2'),
         IFTRAIL=(HD=YES,TRLID=(1,1,CH,EQ,C'T'),
   TRLUPD=(10:COUNT=(M11,LENGTH=4),16:TOT=(45,3,ZD,TO=ZD,LENGTH=6)))
  OUTFIL FNAMES=OUTPUT3,INCLUDE=(30,5,CH,EQ,C'dept3'),
         IFTRAIL=(HD=YES,TRLID=(1,1,CH,EQ,C'T'),
   TRLUPD=(10:COUNT=(M11,LENGTH=4),16:TOT=(45,3,ZD,TO=ZD,LENGTH=6)))

/*
//
