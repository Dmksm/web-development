PROGRAM WorkWithQueryString(INPUT, OUTPUT);
USES DOS;
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  St: STRING;
BEGIN {GetQueryStringParameter}
  IF POS(Key, GetEnv('QUERY_STRING')) <> 0
  THEN
    BEGIN
      St := COPY(GetEnv('QUERY_STRING'), POS(Key, GetEnv('QUERY_STRING'))+Length(Key)+1, 1000); {Копирует подстроку начиная с нужного значения}
      IF POS('&', St) <> 0
      THEN
        GetQueryStringParameter := COPY(St, 1, POS('&', St)-1)  {Копирует подстроку до '&' не включительно}
      ELSE
        GetQueryStringParameter := COPY(St, 1, 1000)
    END
  ELSE
    GetQueryStringParameter := 'There is no parameter'
END; {GetQueryStringParameter}
BEGIN {WorkWithQueryString}
  WRITELN('Content-Type:_Text/plain');
  WRITELN;
  WRITELN('First name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {WorkWithQueryString}
