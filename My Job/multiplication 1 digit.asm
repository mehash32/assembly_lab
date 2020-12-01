.MODEL SMALL
 .STACK 64
 .DATA
          ResultOfDivision db ?
          Divisor db ?
          Dividend db ?
          Remainder db ?
     .CODE
       mov    ah, 01
      int    21H
      sub    al, 48
      mov    Divisor, al

      mov    ah, 01
      int    21H
      sub    al, 48
      mov    Dividend, al
      mov    bl, 00
      mov    al, 00
      mov    bl, Divisor
      mov    al, Dividend
      div    bl



      mov    ResultOfDivision, al
      mov    Remainder, ah

      mov    dl, ResultOfDivision
      add    dl, 48
      mov    ah, 02
      int    21H

      mov    dl, Remainder
      add    dl, 48
      mov    ah, 02
      int    21H
      mov    ah, 4ch
      int    21H

       .EXIT