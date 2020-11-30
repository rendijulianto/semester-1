program AplikasiKasirDenganPascal;

uses
  crt,
  SysUtils;

var
  kode_barang, nama_barang, waktu: string;
  nomor_transaksi, total_bayar, total_berat, i, y, harga_satuan, berat_satuan, jumlah_pesan, harga_total,
  berat_total, dibayar: integer;
  diskon, total_diskon: real;

begin
  randomize;
  i := 1;
  y := 9;
  nomor_transaksi := random(999999999);
  waktu := DateTimeToStr(Now);
  writeln('Data Penjualan');
  writeln;
  writeln('Tanggal Transaksi : ', waktu);

  writeln('Nomor Transaksi :  ', nomor_transaksi);
  writeln;
  writeln('---------------------------------------------------------------------------------------------------------------------');
  writeln('| No  | Kode Barang | Nama Barang       | Harga Satuan | Berat Satuan | Jumlah Pesanan | Harga Total   | Diskon     |');
  writeln('---------------------------------------------------------------------------------------------------------------------');
  writeln('|     |             |                   | Rp.          |     gram     |                | Rp.           | Rp.        |');
  gotoxy(3, y);
  writeln(i);
  gotoxy(9, 9);
  readln(kode_barang);

  while (kode_barang <> '9999') do
  begin
    if (upcase(kode_barang) = 'LAPTOP01') then
    begin
      nama_barang := 'Laptop Asus Vivo';
      harga_satuan := 10000000;
      berat_satuan := 1000;
    end
    else if (upcase(kode_barang) = 'KOMPUTER02') then
    begin
      nama_barang := 'Komputer Acer 2GB';
      harga_satuan := 6000000;
      berat_satuan := 8000;
    end
    else if (upcase(kode_barang) = 'HANDPHONE02') then
    begin
      nama_barang := 'Asus Zenphone 2GB';
      harga_satuan := 6000000;
      berat_satuan := 8000;
    end;

    gotoxy(23, y);
    writeln(nama_barang);
    gotoxy(46, y);
    writeln(harga_satuan);
    gotoxy(58, y);
    writeln(berat_satuan);
    gotoxy(73, y);
    readln(jumlah_pesan);

    harga_total := harga_satuan * jumlah_pesan;
    berat_total := berat_satuan * jumlah_pesan;
    diskon := 0;
    if (upcase(kode_barang) = 'LAPTOP01') and (jumlah_pesan >= 5) or
      (upcase(kode_barang) = 'KOMPUTER02') and (jumlah_pesan >= 5) then
      diskon := harga_total * 0.125;

    gotoxy(93, y);
    writeln(harga_total);
    gotoxy(110, y);
    writeln(diskon: 0: 0);

    total_bayar := total_bayar + harga_total;
    total_berat := total_berat + berat_total;
    total_diskon := total_diskon + diskon;
    y := y + 1;
    i := i + 1;
    writeln('|     |             |                   | Rp.          |     gram     |                | Rp.           | Rp.        |');
    gotoxy(3, y);
    writeln(i);
    gotoxy(9, y);
    readln(kode_barang);
  end;
  writeln('---------------------------------------------------------------------------------------------------------------------');
  writeln('ID / Nomor Transaksi  : ', nomor_transaksi);
  writeln('Waktu Transaksi       : ', waktu);
  writeln('Total Bayar           : Rp. ', total_bayar);
  writeln('Total Potongan        : Rp. ', total_diskon: 0: 0);
  writeln('Total Berat           : ', total_berat / 1000: 0: 0, ' Kg');
  write('Dibayar               : Rp. ');
  readln(dibayar);
  writeln('Kembalian             : Rp. ', dibayar - total_bayar);
  readln;
end.
