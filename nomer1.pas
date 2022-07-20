program nomer1;

var
    nilai : integer;

function multiply(num1, num2: integer) : integer;

    var
        result : integer;
    begin
        result := num1 * num2;
    end;

begin
    nilai := multiply(10,20);
    writeln(nilai);
end.