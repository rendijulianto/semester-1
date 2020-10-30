program PerhitunganTiket;
var
   kelasString,kota:string;
   kelas,tujuan,hargaEkonomi,hargaBisnis,hargaEksekutif,banyakTiket:integer;
   harga,diskon,hargaSetelahDiskon,totalBayar:real;
begin
     writeln('Pilih Tujuan');
     writeln('1. Jakarta');
     writeln('2. Yogyakarta');
     writeln('3. Surabayar');
     writeln('----------------------');
     write('Pilih Tujuan Anda [1,2,3] : ');readln(tujuan);
     case tujuan of
          1:begin
          kota:='Jakarta';
          hargaEkonomi:=100000;
          hargaBisnis:=400000;
          hargaEksekutif:=700000;
          end;
          2:begin
          kota:='Yogyakarta';
          hargaEkonomi:=200000;
          hargaBisnis:=500000;
          hargaEksekutif:=800000;
          end;
          3:begin
          kota:='Surabaya';
          hargaEkonomi:=300000;
          hargaBisnis:=600000;
          hargaEksekutif:=900000;
          end;
          else
          begin
          kota:='-';
          hargaEkonomi:=0;
          hargaBisnis:=0;
          hargaEksekutif:=0;
          end;
     end;
     if(kota = '-') then
     writeln('Tujuan Tidak Tersedia')
     else
     begin
     writeln('----------------------');
     writeln('Pilih Kelas : ');
     writeln('1. Ekonomi');
     writeln('2. Bisnis');
     writeln('3. Eksekutif');
     writeln('----------------------');
     write('Pilih Kelas Anda [1,2,3] : ');readln(kelas);
     write('Banyak Tiket             : ');readln(banyakTiket);
     case kelas of
          1:begin
          kelasString:='Ekonomi';
          harga:=hargaEkonomi;
          end;
          2:begin
          kelasString:='Bisnis';
          harga:=hargaBisnis;
          end;
          3:begin
          kelasString:='Eksekutif';
          harga:=hargaEksekutif;
          end;
          else
          begin
          kelasString:='-';
          harga:=0;
          end;
     end;
     if(harga = 0) then
     writeln('Kelas Yang Anda Pilih Tidak Tersedia')
     else
     begin
     writeln(banyakTiket, ' x (Bandung - ',kota,' ', kelasString,')');
     if(kota = 'Yogyakarta') and (kelasString = 'Ekonomi') then
     diskon:=0.10*harga
     else if(kota = 'Yogyakarta') and (kelasString = 'Ekonomi') then
     diskon:=0.10*harga
     else

     diskon:=0;

     writeln('Harga Tiket                     : Rp.   ',harga:0:0);
     writeln('Diskon                          : Rp.   ',diskon:0:0);
     writeln('Harga Setelah Diskon            : Rp.   ',harga-diskon:0:0,' /Tiket');
     writeln('Total Bayar                     : Rp.   ',banyakTiket*harga-diskon*banyakTiket:0:0);
     end;
     end;

     readln;

end.