program table_sinus;

uses
  crt;

var
  f,x: real;
  i: integer;
begin
  clrscr;

  for i := 0 to 359 do
  begin
    x := i * (pi / 180);
    f := sin(x);
    writeln('SIN( ', i, ')      :  ', f: 0: 4);
    if (i mod 20 = 19) then
    begin
      writeln('Tekan enter untuk melanjutkan');
      readln;
      Clrscr;
    end;
  end;
  readln;
end.