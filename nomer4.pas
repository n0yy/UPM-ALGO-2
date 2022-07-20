program nomer4;
uses crt;
var
    nilai: array[1..5] of integer;
    i, angka, findNumber : integer;
    total : real;
    isFind : boolean = false;

procedure OutputArray;
begin
    i := 0;
    repeat
        i := i + 1;
        write(nilai[i], ' ');
    until (i = 5);

    writeln();
end;

begin
    clrscr;
    writeln('Untuk lulus dari program ini rata-rata nilai minimal 78');

    total := 0;
    for i := 5 downto 1 do begin
        write('Nilai ke-',i,' : '); readln(angka);
        nilai[i] := angka;
        total := total + angka / 5;
    end;

    writeln('Nilai-nilai Anda : ');
    OutputArray;

    if(total >= 78) then
        writeln('Selamat Anda LULUS dengan Total Nilai : ', total:4:2)
    else 
        writeln('Maaf, anda TIDAK LULUS dengan total Nilai : ', total:4:2);


    write('Cari Nilai : '); readln(findNumber);

    // Sequential Searching
    for i := 1 to 5 do begin
        if(findNumber = nilai[i]) then
            isFind := true;
    end;


    if(isFind) then
        writeln('Nilai ditemukan!')
    else
        writeln('Nilai tidak ditemukan!!');

end.