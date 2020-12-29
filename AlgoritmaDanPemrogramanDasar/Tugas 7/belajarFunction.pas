program BelajarFunction;

uses
  crt,
  SysUtils;

function tahunKabisat(tahun: integer): boolean;
begin
  if ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) or (tahun mod 400 = 0) then
    tahunKabisat := true
  else
    tahunKabisat := false;
end;

function akhirBulan(tahun, bulan: integer): integer;
begin
  case bulan of
    1, 3, 5, 7, 8, 10, 12: akhirBulan := 31;
    4, 6, 9, 11: akhirBulan := 30;
    2: if (tahunKabisat(tahun)) then
        akhirBulan := 29
      else
        akhirBulan := 28;
    0: akhirBulan := 0;
  end;
end;

function validasiTanggal(tahun, bulan, tanggal: integer): boolean;

begin
  validasiTanggal := false;
  if (bulan < 1) or (bulan > 12) then
    validasiTanggal := false
  else if (tanggal <= akhirBulan(tahun, bulan)) then
    validasiTanggal := true;

end;


function countVocal(kalimat: string): integer;
var
  total, i: integer;
begin
  total := 0;
  for i := 1 to length(kalimat) do
    if (upcase(kalimat[i]) in ['A', 'I', 'U', 'E', 'O']) then
      total := total + 1;
  countVocal := total;
end;

function countConsonan(kalimat: string): integer;
var
  total, i: integer;
begin
  total := length(kalimat) - countVocal(kalimat);
  for i := 1 to length(kalimat) do
    if (kalimat[i] = ' ') then
      total := total - 1;
  countConsonan := total;
end;

const
  maks = 100;
type
  TArray = array[1..maks] of integer;

function SimpanganBaku(Data: TArray; n: integer): real;

var
  xTotal, i: integer;
  rata2, hasil, hitung: real;
begin
  xTotal := 0;
  for i := 1 to n do
    xTotal := xTotal + Data[i];
  rata2 := xTotal / n;
  hitung := 0;
  for i := 1 to n do
    hitung := hitung + sqr(Data[i] - rata2);

  hasil := hitung / (n - 1);
  hasil := sqrt(hasil);
  SimpanganBaku := hasil;
end;

var
  rata2, hasil: real;
  i, n, xTotal, total: integer;
  Data: TArray;

begin
  clrscr;
  repeat
    write('Masukkan Banyak Data : ');
    readln(n);
  until ((n > 0) and (n < maks));
  xTotal := 0;
  for i := 1 to n do
  begin
    write('Masukan Angka Ke- ', i, ' : ');
    readln(Data[i]);
    xTotal := xTotal + Data[i];
  end;
  rata2 := xTotal / n;

  writeln('Rata-rata : ', rata2: 0: 2);
  writeln('Data yang melebihi rata - rata');
  total := 0;
  for i := 1 to n do
    if (Data[i] > rata2) then
    begin
      writeln('Data Ke-', i, ' : ', Data[i]);
      total := total + 1;
    end;
  writeln('Ada ', total, ' data yang melebihi rata-rata');

  readln;
end.
