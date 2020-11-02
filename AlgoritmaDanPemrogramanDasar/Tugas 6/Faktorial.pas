program Faktorial;

var
  i, total, N: integer;
begin

  write('N : ');
  readln(N);
  total := 1;
  for i := 1 to N do
    total := total * i;
  writeln(N, '! : ', total);
  readln;

end.