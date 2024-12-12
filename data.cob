       IDENTIFICATION DIVISION.
       PROGRAM-ID. DataProgram.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  STORAGE-BALANCE    PIC 9(6)V99 VALUE 1000.00.
       01  OPERATION-TYPE     PIC X(6).

       LINKAGE SECTION.
       01  PASSED-OPERATION   PIC X(6).
       01  BALANCE            PIC 9(6)V99.

       PROCEDURE DIVISION USING PASSED-OPERATION BALANCE.
           MOVE PASSED-OPERATION TO OPERATION-TYPE

           IF OPERATION-TYPE = 'READ'
               MOVE STORAGE-BALANCE TO BALANCE

           ELSE IF OPERATION-TYPE = 'WRITE'
               MOVE BALANCE TO STORAGE-BALANCE

           END-IF
           GOBACK.
