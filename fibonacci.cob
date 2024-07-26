       IDENTIFICATION DIVISION.
       PROGRAM-ID. fibonacci.
       AUTHOR. JAMES HILL.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 N                  PIC 9(3) VALUE 10.
       01 I                  PIC 9(3) VALUE 1.
       01 FIBONACCI-NUMBER   PIC 9(18) VALUE 1.
       01 PREVIOUS-NUMBER    PIC 9(18) VALUE 0.
       01 TEMP-NUMBER        PIC 9(18).
       01 COUNTER            PIC 9(3) VALUE 2. 
      * 
       PROCEDURE DIVISION.
       MAIN-LOGIC. 
           DISPLAY "ENter the number of Fibonacci terms: "
           ACCEPT N
           DISPLAY PREVIOUS-NUMBER
           DISPLAY FIBONACCI-NUMBER

           PERFORM UNTIL COUNTER > N
              MOVE FIBONACCI-NUMBER TO TEMP-NUMBER
              ADD PREVIOUS-NUMBER TO FIBONACCI-NUMBER
              MOVE TEMP-NUMBER TO PREVIOUS-NUMBER
              DISPLAY FIBONACCI-NUMBER
              ADD 1 TO COUNTER
           END-PERFORM

           STOP RUN.
           