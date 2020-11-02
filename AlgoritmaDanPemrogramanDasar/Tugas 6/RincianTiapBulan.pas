program ProgramRincianTabugan;

uses
  crt;

var
   bungaInt,lamaBulan,i:integer;
   saldoAkhir,saldoAwal,bunga:real;
begin
  write('Saldo Awal : ');readln(saldoAwal);
  write('Bunga (%)  : ');readln(bungaInt);
  bunga:=(bungaInt/100);
  write('Priode     : ');readln(lamaBulan);
  i:=1;
  while(i <= lamaBulan) do
  begin
  saldoAkhir:= saldoAwal+bunga*saldoAwal;
  writeln('Saldo di akhir bulan ke-',i,' Rp. ',saldoAkhir:0:0);
  saldoAwal:=saldoAkhir;
  i:=i+1;
  end;
  readln;
end.