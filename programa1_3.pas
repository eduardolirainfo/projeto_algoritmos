program FindMaxMinValue;

type
  TipoVetor = array[1..10] of integer;

procedure MaxMin2(var A: TipoVetor; var Max, Min: integer);
var i: integer;
begin
  Max := A[1];
  Min := A[1];
  for i := 2 to 10 do
    if A[i] > Max
    then Max := A[i]
    else if A[i] < Min then Min := A[i];
end;

var
  MeuVetor: TipoVetor;
  MaxResult, MinResult: integer;
  i: integer;
begin
  // Inicializando o vetor com valores
  for i := 1 to 10 do
    MeuVetor[i] := i * 2;

  // Chamando a procedure
  MaxMin2(MeuVetor, MaxResult, MinResult);

  // Exibindo os resultados
  writeln('O maior valor no vetor é: ', MaxResult);
  writeln('O menor valor no vetor é: ', MinResult);
end.
