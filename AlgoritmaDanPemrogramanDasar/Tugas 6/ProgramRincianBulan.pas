program ProgramRincianBulan;

uses
  crt;

var
   bungaInt,i:integer;
   saldoAkhir,saldoTarget,saldoAwal,bunga:real;
begin
  write('Saldo Awal : ');readln(saldoAwal);
  write('Bunga (%)  : ');readln(bungaInt);
  bunga:=(bungaInt/100);
  write('Saldo Target     : ');readln(saldoTarget);
  i:=1;


  repeat
  saldoAkhir:= saldoAwal+bunga*saldoAwal;
  writeln('Saldo di akhir bulan ke-',i,' Rp. ',saldoAkhir:0:0);
  saldoAwal:=saldoAkhir;
  i:=i+1;
  until saldoAkhir>saldoTarget;

  readln;
end.
