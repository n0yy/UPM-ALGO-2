program nomer3;
uses crt;

var
    i, j, N, number, temp, min, max: integer;
    mean, total : real;
    arr: array[1..50] of integer;

procedure OutputArray;
begin
    for i := 1 to N do
        write(arr[i], ' ');
    
    writeln();
end;


begin
    clrscr;
    write('Masukan jumlah data yang ingin diinput (maks : 50 data) : '); readln(N);

    for i := 1 to N do 
        begin
            write('Data ke-', i, ' : '); readln(number);
            arr[i] := number;
        end;

    clrscr;

    // OUTPUT
    writeln('Data yang diinput:');
    OutputArray;

    // Deklarasi Total
    total := 0;

    // Bubble Sort | Ascending
    for i := 1 to N do
    begin
        for j := 1 to N-1 do
        begin
            if(arr[j] > arr[j+1]) then
                begin
                    temp := arr[j];
                    arr[j] := arr[j+1];
                    arr[j+1] := temp;
                end;
        end;
        total := total + arr[i];
    end;

    // Nilai Min | Max | Mean
    min := arr[1];
    max := arr[N];
    mean := total / N;
    
    // OUTPUT
    writeln('Data setelah di Urutkan secara Ascending : ');
    OutputArray;

    // Output: Min dan Max
    writeln('Nilai Terkecil : ', min);
    writeln('Nilai Terbesar : ', max);
    writeln('Nilai rata-rata : ', mean:4:2);


end.