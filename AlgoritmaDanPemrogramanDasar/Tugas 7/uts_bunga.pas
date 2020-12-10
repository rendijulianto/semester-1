program BungaMotor;

uses
  crt;

var
  merk: string;
  uangMuka, Lama, hargaMotor, i: integer;
  sisaPembayaran, totalHarga, angusranPerbulan, bunga: real;
  bayar: double;
begin
  write('Merk Motor    : ');
  readln(merk);
  hargaMotor := 0;
  merk := upcase(merk);

  if (merk = 'XYZ') then
    hargaMotor := 16650000;

  writeln('Harga Motor   : Rp.', hargaMotor);
  write('Uang Muka (DP): ');
  readln(uangMuka);
  write('Lama Angsuran : ');
  readln(Lama);

  if (lama = 11) then
    bunga := 0.2653
  else if (lama = 17) then
    bunga := 0.3550
  else if (lama = 23) then
    bunga := 0.3796
  else
    bunga := 0;

  totalHarga := hargaMotor + (hargaMotor * bunga) - uangMuka;
  angusranPerbulan := totalHarga / lama;
  writeln('Harga Total Harus Dibayar Rp.', totalHarga: 0: 2);
  writeln('Angsuran Perbulan Rp.', angusranPerbulan: 0: 2);
  i := 1;
  while (i <= Lama) do
  begin
    sisaPembayaran := totalHarga - angusranPerbulan;
    bayar := (trunc(sisaPembayaran) div 1000) * 1000;
    if (bayar <> 0) then
      bayar := bayar + 1000;
    writeln('Bayar Angsuran Ke-', i, ' Sisa Pembayaran Rp.', bayar: 0: 0);
    totalHarga := sisaPembayaran;
    i := i + 1;
  end;

  readln;
end.
