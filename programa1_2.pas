program FindMaxMinValue;

type
  TipoVetor = array[1..10] of integer;

procedure MaxMin1(var A: TipoVetor; var Max, Min: integer);
var
  i: integer;
begin
  Max := A[1];
  Min := A[1];
  for i := 2 to 10 do
  begin
    if Max < A[i] then
      Max := A[i];
    if Min > A[i] then
      Min := A[i];
  end;
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
  MaxMin1(MeuVetor, MaxResult, MinResult);

  // Exibindo os resultados
  writeln('O maior valor no vetor é: ', MaxResult);
  writeln('O menor valor no vetor é: ', MinResult);
end.
