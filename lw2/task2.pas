PROGRAM SarahRevere(INPUT, OUTPUT);
USES DOS;
BEGIN {SarahRevere}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  IF GetEnv('QUERY_STRING') = 'lanterns=1'
  THEN
    WRITELN('British are coming by land')
  ELSE
    IF GetEnv('QUERY_STRING') = 'lanterns=2'
    THEN
      WRITELN('British are coming by sea')
    ELSE
      WRITELN('No information')
END. {SarahRevere}
