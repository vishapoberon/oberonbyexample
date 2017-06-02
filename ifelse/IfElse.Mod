MODULE ifelse;


IMPORT Out;

VAR n, m : INTEGER;


BEGIN
	IF 8 MOD 4 = 0
		THEN
			Out.String("8 is divisible by 4"); Out.Ln;
	END;

	n := 7; m := 6;

	IF n * m = 42
		THEN
			Out.String("7 times 6 equals 42"); Out.Ln;
	END;

	IF n # m THEN Out.String("7 does not equal 6"); Out.Ln; END;

	IF ODD(n)
		THEN
			Out.String("7 is odd"); Out.Ln;
		ELSE
			Out.String("7 is even"); Out.Ln;
	END;

	n := 9;

	IF n < 0
		THEN
			Out.Int(n, 0); Out.String(" is negative"); Out.Ln;
	ELSIF n < 10
		THEN
			Out.Int(n, 0); Out.String(" has 1 digit"); Out.Ln;
	ELSE
			Out.Int(n, 0); Out.String(" has multiple digits"); Out.Ln;
	END;
END ifelse.
