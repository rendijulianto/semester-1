program PerhitunganNilaiIndex;
var
   kehadiran:integer;
   nilaiTugas,nilaiUTS,nilaiUAS,nilaiKehadiran,nilaiAkhir:real;
   index,keterangan:string;
begin
     write('Kehadiran [0...6]        : ');readln(kehadiran);
     write('Nilai Tugas              : ');readln(nilaiTugas);
     write('Nilai UTS                : ');readln(nilaiUTS);
     write('Nilai UAS                : ');readln(nilaiUAS);
     writeln('-------------------------------------');
     case kehadiran of
      0..16:begin
         nilaiKehadiran:=kehadiran/16*100;
         writeln('Nilai Kehadiran : ', nilaiKehadiran:0:2);
         nilaiAkhir:=0.1*nilaiKehadiran+0.2*nilaiTugas+0.3*nilaiUTS+0.40*nilaiUAS;
         writeln('Nilai Akhir       : ', nilaiAkhir:0:2);
         if(nilaiAkhir >= 80)and(nilaiAkhir <= 100) then
         begin
          index:='A';
          keterangan:='Sangat Baik';
         end
          else if(nilaiakhir >= 68) and (nilaiAkhir <80) then
         begin
          index:='B';
          keterangan:='Baik';
         end
          else if(nilaiakhir >= 56) and (nilaiAkhir <68) then
         begin
          index:='C';
          keterangan:='Cukup';
         end
         else if(nilaiakhir >= 45) and (nilaiAkhir <56) then
         begin
          index:='D';
          keterangan:='Kurang';
         end
         else if(nilaiakhir >= 0) and (nilaiAkhir <45) then
         begin
          index:='E';
          keterangan:='Sangat Kurang';
         end
         else
         begin
          index:='Nilai Tidak Sah';
          keterangan:='-';
          end;
          writeln('Index : ', index);
          writeln('Keterangan : ', keterangan);
      end;
      else
         writeln('Jumlah Kehadiran Anda Tidak Sesuai');
     end;
     readln;
end.