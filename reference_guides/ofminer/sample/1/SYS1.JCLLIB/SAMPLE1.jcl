//SAMPLE1  JOB CLASS=A,MSGCLASS=X,MSGLEVEL=(1,1),TIME=1440
//JOBLIB   DD DSN=USR1.COBLIB,DISP=SHR
//*-------------------------------------------------------------------*
//STEP01   EXEC PGM=COB1
//SYSOUT   DD SYSOUT=*
//OFILE1   DD DSN=SAMPLE1.DATA.INOUT1,DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=80)
//STEP02   EXEC PGM=COB4
//IFILE1   DD DSN=SAMPLE1.DATA.INOUT1,DISP=SHR
//SYSOUT   DD SYSOUT=*
/*