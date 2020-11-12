program kalkulator10;
uses crt;
var bil1,bil2,hasil,x,y,y_awal : integer;
begin




   ClrScr;
    for bil1:=1 to 10 do
    begin
         if bil1 <= 5 then
         y_awal:= 1
         else
         y_awal:=12;
              if bil1 <= 5 then
              x:=bil1*14-13
              else
              x:=(bil1-5)*14-13;
              for bil2:=1 to 10 do
              begin
                   y:=y_awal+bil2-1;
                   hasil:=bil1*bil2;
                   gotoxy(x,y);
                   writeln(bil1:2, ' x ', bil2:2, ' = ', hasil:3);
              end;
    end;



   readln;
end.