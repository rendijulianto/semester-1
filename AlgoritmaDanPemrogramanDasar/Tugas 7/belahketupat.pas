program belahKetupat;
var
   i,j,n:integer;
begin
     write('Masukan N : ');readln(n);


     for i:=1 to n do
     begin
          for j:=n downto i do
           write(' ');
           for j:=1 to j+j-1  do
           write('-');
           writeln;
     end;
     for i:=n-1 downto 1 do
     begin
          for j:=i to n do
          write(' ');
          for j:=i*2-1 downto 1 do
          write('-');
          writeln;
     end;
      readln;

end.