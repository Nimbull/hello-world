       * hello.cbl by Nimbull
       IDENTIFICATION DIVISION.
       PROGRAM-ID. hello.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 n   BINARY.

       PROCEDURE DIVISION.
       DISPLAY "Hello World!".
       DISPLAY "Enter your age?".
       ACCEPT n.
       DISPLAY "Your age is " n.
       STOP RUN.
