PROGRAM WorkWithQueryString(INPUT, OUTPUT);
USES DOS;
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  St: STRING;
  CopyLength: INTEGER;
BEGIN {GetQueryStringParameter}
  CopyLength := 1000;
  IF POS(Key + '=', GetEnv('QUERY_STRING')) <> 0
  THEN
    BEGIN
      St := COPY(GetEnv('QUERY_STRING'), POS(Key + '=', GetEnv('QUERY_STRING')) + Length(Key) + 1, CopyLength);
      IF POS('&', St) <> 0
      THEN
        CopyLength := POS('&', St) - 1;
      GetQueryStringParameter := COPY(St, 1, CopyLength)
    END
  ELSE
    GetQueryStringParameter := 'There is no parameter'
END; {GetQueryStringParameter}
BEGIN {WorkWithQueryString}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {WorkWithQueryString}
