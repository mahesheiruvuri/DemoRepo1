//REPORT1 JOB REPORTJCL,MSGLEVEL=(2,0),CLASS=A,MSGCLASS=X,
//            NOTIFY=&SYSUID
//*
//*********************************************************
//STEP01    EXEC PGM=SORT 
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SORTIN    DD DISP=SHR,DSN=Z30120.SORT.DATASET.INPUT01
//OUTPUT1   DD SYSOUT=*
//SYSIN     DD *
  SORT FIELDS=(1,5,ZD,A)
  OUTFIL FNAMES=OUTPUT1,LINES=24,BLKCCH2,
  HEADER1=(17:'Student Details',33:'Printed on ',DATE=(MD4/),
           ' AT ',TIME,/,
        17:'---------------',33:'---------------------------------'),
  HEADER2=(/,15:'Class X Students Details',40:'Page',PAGE,53:' on ',
           58:DATE=(MD4-),/,
           15:'-------------------------',4/,
        1:'Std Num',11:'Std Name',30:'Department',45:'Total Marks',
           /,
        1:'-------',11:'--------',30:'----------',45:'-----------'),
  OUTREC=(1,80)
/*