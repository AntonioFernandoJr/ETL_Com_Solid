unit Model.Arquivo.TXT.OCP;

interface

uses
  Model.Arquivo.OCP, System.Generics.Collections, Model.Dados.OCP;

type
  TTxt = class(TArquivo)
  public
    procedure LerArquivo(pCaminho: String; pListaDeDados: TDictionary<String, IDados>);override;
  end;



implementation


procedure TTxt.LerArquivo(pCaminho: String; pListaDeDados: TDictionary<String, IDados>);
var
  lArquivo: TextFile;
  lLinha: String;
  lDados: IDados;
begin
  AssignFile(lArquivo, pCaminho);
  try
    Reset(lArquivo);
    while not Eof(lArquivo) do
    begin
      Readln(lArquivo, lLinha);
      lDados := TDados.Create();
      lDados.CPF  := Copy(lLinha,0, 11);
      lDados.Nome :=  Copy(lLinha,12, 29);
      lDados.Email := Copy(lLinha,42, 40);

      pListaDeDados.Add(lDados.CPF, lDados);
    end;
  finally
    Close(lArquivo);
  end;
end;


end.
