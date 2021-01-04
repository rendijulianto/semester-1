program belajar;
const
     maks=100;
type
  TArray=array[1..maks] of integer;
var
   data:TArray;
   banyakData,totalLebih,i,total,nilaiTerkecil,nilaiTerbesar:integer;
   rata2,rumus,result:real;
begin
     Randomize;
     write('Masukan Banyak Data : ');readln(banyakData);
     for i:=1 to banyakData do
     begin
          //data[i]:= random(10);
          write('Masukan Data Ke-', i,' : ');readln(data[i]);
     end;
     writeln('Data Akan DiTampilkan');
     total:=0;
     for i:=1 to banyakData do
     begin
          writeln('Data Ke-',i,' adalah : ',data[i]);
          total:=total+data[i];

     end;

     nilaiTerkecil:=data[1];
     nilaiTerbesar:=data[1];
     for i:=2 to banyakData do
     begin
         if(data[i] < nilaiTerkecil) then
            nilaiTerkecil:=data[i]
         else if(data[i] > nilaiTerbesar) then
            nilaiTerbesar:=data[i];
     end;
     rata2:=total/banyakData;
     writeln('Rata Rata  : ',rata2:0:2);
     writeln('Nilai Terkecil : ',nilaiTerkecil);
     writeln('Nilai Terbesar : ',nilaiTerbesar);
     writeln('Total : ',total);
     writeln('Data yang melebihi rata-rata');
     totalLebih:=0;
     rumus:=0;
     for i:=1 to banyakData do
     begin
          if(data[i] > rata2) then
          begin
               writeln('Data Ke-', i,' : ', data[i]);
               totalLebih:=totalLebih+1;
          end;
          rumus:=rumus+sqr(data[i] - rata2);
     end;
     result:=sqrt(rumus/(banyakData-1));
     writeln('Ada ',totalLebih,' data yang melebihi rata-rata');
     writeln('Simpangan Baku :', result:0:2);
     readln;
end.
