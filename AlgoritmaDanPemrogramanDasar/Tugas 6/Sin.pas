program table_sinus;

uses
  crt;

var
  f,x: real;
  i: integer;
begin
  clrscr;

  for i := 1 to 359 do
  begin
    x := i * (pi / 180);
    f := sin(x);
    writeln('SIN( ', i, ')      :  ', f: 0: 4);
    if i mod 20 = 0 then
    begin
      writeln('Tekan enter untuk melanjutkan');
      readln;
      Clrscr;
    end;
  end;
  writeln('--------------------------------------------------------------');
  readln;
end.