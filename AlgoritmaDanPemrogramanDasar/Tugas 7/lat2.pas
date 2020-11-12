program bintang;
uses crt;
var i,j,n : integer;
begin

   ClrScr;
    write('N : '); readln(n);
    for i:=1 to n do
    begin
         for j:=1 to i do
         write('*');
         writeln;
    end;

   readln;
end.