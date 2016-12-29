MODULE Days;

 TYPE 
 Day* = POINTER TO DayDesc;
 DayDesc = RECORD
   next*, prev* : Day;
 END DayDesc;
 TYPE Week = ARRAY 7 OF Day;

 VAR sun*, mon*, tue*, wed*, thu*, fri*, sat* : Day;
 week: ARRAY 7 OF Day;

 PROCEDURE Next*(d : Day): Day;
 BEGIN
   RETURN d.next
 END Next;

 PROCEDURE Prev*(d: Day): Day;
 BEGIN
   RETURN d.prev;
 END Prev;

 PROCEDURE inc(VAR j: SHORTINT);
 BEGIN
   IF j = 6 THEN
     j := 0
   ELSE
     INC(j)
   END
 END inc;

  PROCEDURE dec(VAR j: SHORTINT);
 BEGIN
   IF j = 0 THEN
     j := 6
   ELSE
     DEC(j)
   END
 END dec;

 PROCEDURE init(VAR w : Week);
   VAR
     i,j : SHORTINT;
 BEGIN
     i := 0;
     REPEAT
       j := i; inc(j);
       w[i].next := w[j];
       j := i; dec(j);
       w[i].prev := w[j];
     UNTIL i > 6;
 END init;

BEGIN
  NEW(sun); NEW(mon); NEW(tue); NEW(wed); NEW(thu); NEW(fri); NEW(sat);
  week[0] := sun;
  week[1] := mon;
  week[2] := tue;
  week[3] := wed;
  week[4] := thu;
  week[5] := fri;
  week[6] := sat;
  
  init(week);

END Days.
