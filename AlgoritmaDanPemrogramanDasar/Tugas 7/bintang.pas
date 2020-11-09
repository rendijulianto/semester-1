Program menampilkan_bintang;
uses crt;
var
   i, j, e, n : integer;
begin
clrscr;
     writeln('Program menampilkan Bintang Segitiga');
     writeln('====================');
     writeln;
     write('Masukkan Jumlah Baris : ');readln(n);
     for i:=1 to n do
     begin
     for j:=n downto i do
     write(' ');
     for e:= 1 to j+j-1 do
     write('*');
     writeln;

     end;

     readln;
end.