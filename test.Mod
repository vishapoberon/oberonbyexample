MODULE test;

IMPORT Days;

VAR today, yesterday, tomorrow: Days.Day;

BEGIN
  today := Days.mon; (*init*)

  yesterday := Days.Prev(today);
  tomorrow := Days.Next(today);

END test.
