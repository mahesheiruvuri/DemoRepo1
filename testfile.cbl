       IDENTIFICATION DIVISION. 
       PROGRAM-ID. TESTFILE.
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 WS-VAR1   PIC S9(4) COMP.
       01 WS-VAR2   PIC S9(4) COMP.
       01 WS-VAR3   PIC S9(4) COMP.
       PROCEDURE DIVISION.
       MAIN-PARA.
           INITIALIZE WS-VAR1, WS-VAR2.
           MOVE 1234 TO WS-VAR1.
           MOVE 12.34 TO WS-VAR2.
           COMPUTE WS-VAR3 = WS-VAR1 + WS-VAR2.
           DISPLAY 'RESULT IS : ',WS-VAR3.
           STOP RUN.

       