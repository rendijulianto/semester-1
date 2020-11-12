program ulang_kotak;
uses crt;
var i,x1,x2,y1,y2 : integer;
begin
     write('X1 : ');readln(x1);
	 write('Y1 : ');readln(y1);
	 write('X2 : ');readln(x2);
	 write('Y2 : ');readln(y2);

     gotoxy(x1,y1);
     write('+');
     for i:=1 to x2-x1-1 do
     begin
      gotoxy(x1+i,y1);
      write('-');
     end;
     write('+');
     for i:=1 to y2-x1+1 do
     begin
      gotoxy(x2,y1+i);
      write('|');
     end;
     gotoxy(x2,y2);
     write('+');
     for i:=1 to x2-x1-1 do
     begin
     gotoxy(x1+i,y2);
     write('-');
     end;
     gotoxy(x1,y2);
     write('+');
     for i:=1 to y2-x1+1 do
     begin
     gotoxy(x1,y1+i);
     write('|');
     end;




   readln;
end.
