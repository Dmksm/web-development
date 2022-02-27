PROGRAM HelloDearName(INPUT, OUTPUT);
USES DOS;
VAR
  CopyLength: INTEGER;
BEGIN {HelloDearName}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  CopyLength := 1000;
  IF POS('name=', GetEnv('QUERY_STRING')) = 1
  THEN
    BEGIN
      IF POS('&', GetEnv('QUERY_STRING')) <> 0
      THEN
        CopyLength := POS('&', GetEnv('QUERY_STRING'))-6;
      WRITELN('Hello dear, ', COPY(GetEnv('QUERY_STRING'), 6, CopyLength), '!')
    END
  ELSE
    WRITELN('Hello Anonymous!')
END. {HelloDearName}
