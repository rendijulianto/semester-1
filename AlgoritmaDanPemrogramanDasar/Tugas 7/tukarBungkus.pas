program TukarBungkusCoklat;


var
   jumlahBungkus:integer;
   totalCoklat:real;
   sisaBungkus:real;

begin

     write('Masukan Jumlah Bungkus yang Ditukarkan : ');readln(jumlahBungkus);
     while ((jumlahBungkus > 100) or (jumlahBungkus < 3)) do
     begin
          if(jumlahBungkus < 3) then
          writeln('Tidak Kurang Dari 3')
          else
          writeln('Tidak Lebih Dari 100');
          write('Masukan Jumlah Bungkus yang Ditukarkan : ');readln(jumlahBungkus);
     end;
     totalCoklat:=jumlahBungkus div 3;
     sisaBungkus:=jumlahBungkus mod 3;
     writeln('Total Coklat yang Didapat : ', totalCoklat:0:0);
     writeln('Sisa Bungkus yang Tidak bisa Ditukar : ', sisaBungkus:0:0);


     readln;
end.
