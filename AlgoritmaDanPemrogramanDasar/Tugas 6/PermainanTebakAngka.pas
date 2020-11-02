program PermainanTebakAngka;

uses
  crt;

var
   tebakan,i,angkaAcak:integer;

begin
     randomize;
     angkaAcak:=random(100);
     i:=0;
     repeat
           write('Tebakan anda : ');readln(tebakan);
           if(tebakan > angkaAcak) then
           writeln('Tebakan anda terlalu besar')
           else
           writeln('Tebakan anda terlalu kecil');

           i:=i+1;
     until tebakan=angkaAcak;
     writeln('Selamat, anda benar di tebakan ke-',i,'.');
     readln;


end.
