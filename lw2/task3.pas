PROGRAM SarahRevere(INPUT, OUTPUT);
USES DOS;
BEGIN {SarahRevere}
  WRITELN('Content-Type:_Text/plain');
  WRITELN;
  IF POS('name=', GetEnv('QUERY_STRING')) = 1
  THEN
    WRITELN('Hello dear, ', COPY(GetEnv('QUERY_STRING'), 6, 1000), '!')
  ELSE
    WRITELN('Hello Anonymous!')
END. {SarahRevere}
