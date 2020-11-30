program FotoCopy;



var
   statusInput:char;
   status:string;
   hargaPerlembar,totalBayar,jumlah:integer;

begin
     write('Memiliki Kartu Pelanggan [Y/N] : ');readln(statusInput);
     statusInput:=upcase(statusInput);
     while((statusInput <> 'Y') and (statusInput <> 'N')) do
     begin
          writeln('Silahkan Pilih Y / N !');
          write('Memiliki Kartu Pelanggan [Y/N] : ');readln(statusInput);
     end;



      write('Mau Print Berapa Lembar : ');readln(jumlah);
      if(statusInput = 'Y') then
      begin
           status:='Pelanggan Tercintah';
           hargaPerlembar:=75;
      end
      else if((statusInput = 'N')) then
      begin
           status:='Non Pelanggan';
           if(jumlah < 100) then
           hargaPerlembar:=100
           else
           hargaPerlembar:=85;
      end;
      totalBayar:=hargaPerlembar*jumlah;
      writeln('Status                   : ', status);
      writeln('Jumlah FotoCopy          : ', jumlah,' Lembar');
      writeln('Harga Perlembar          : ', hargaPerlembar);
      writeln('Total Bayar              : ', totalBayar);



     readln;
end.
