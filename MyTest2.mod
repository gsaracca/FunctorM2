MODULE MyTest2;

IMPORT IO;

CLASS TA;
	I :INTEGER;
	PROCEDURE Call() :TA;
	PROCEDURE Show();
	PROCEDURE Test();
END TA;

CLASS IMPLEMENTATION TA;

	PROCEDURE Call() :TA;
	BEGIN
		I := I + 5;
		RETURN SELF
	END Call;
	
	PROCEDURE Test();
	BEGIN
	END Test;
	
	PROCEDURE Show();
	BEGIN
		IO.WrInt( I, 10 )
	END Show;	

BEGIN
	I := 0;
END TA; 

VAR A :TA;
	B :TA;

BEGIN
	B := A.Call().Call().Call().Call().Call();
	B.Show()
END MyTest2.
