program FindMaxValue;

type
  TipoVetor = array[1..10] of integer;

function Max(A: TipoVetor): integer;
var
  i, Temp: integer;
begin
  Temp := A[1];
  for i := 2 to 10 do
    if Temp < A[i] then Temp := A[i];
  Max := Temp;
end;

var
  MeuVetor: TipoVetor;
  MaxResult: integer;
  i: integer;
begin
  // Inicializando o vetor com valores
  for i := 1 to 10 do
    MeuVetor[i] := i * 2;

  // Chamando a função
  MaxResult := Max(MeuVetor);

  // Exibindo o resultado
  writeln('O maior valor no vetor é: ', MaxResult);
end.
