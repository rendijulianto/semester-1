program CustomKalkulator;


var
  bil1,bil2:integer;
  hasil:real;
  oprasi:char;

begin
    write('Masukan Angka Pertama  : ');readln(bil1);
    write('Masukan Angka Kedua    : ');readln(bil2);
    write('Masukan Oprator        : ');readln(oprasi);

    while((oprasi <> '*') and (oprasi <> '+')  and (oprasi <> '/') and (oprasi <> '-')) do
    begin   writeln('Operator Hanya Tersedia + - * /');
           write('Masukan Oprator        : ');readln(oprasi);
    end;
    if(oprasi = '+') then
    hasil:=bil1+bil2
    else if(oprasi = '-') then
    hasil:=bil1-bil2
    else if(oprasi = '/') then
    hasil:=bil1/bil2
    else if(oprasi = '*') then
    hasil:=bil1*bil2;
    writeln('Hasil Dari ',bil1,' ', oprasi,'  ', bil2,' = ', hasil:0:0);


     readln;
end.
