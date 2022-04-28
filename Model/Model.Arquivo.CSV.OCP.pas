unit Model.Arquivo.CSV.OCP;

interface

uses
  Model.Arquivo.OCP,  System.Classes, System.SysUtils, Model.Dados.OCP, System.Generics.Collections;

type
  TCsv = class(TArquivo)
  public
    procedure LerArquivo(pCaminho: String; pListaDeDados: TDictionary<String, IDados>);override;
  end;

implementation



procedure TCsv.LerArquivo(pCaminho: String; pListaDeDados: TDictionary<String, IDados>);
var
  lLinha: TStringList;
  lColuna: TStringList;
  I: Integer;
  lDados: IDados;
begin
  lLinha := TStringList.Create();
  lColuna := TStringList.Create();
  try
    lLinha.LoadFromFile(pCaminho);

    for I := 0 to Pred(lLinha.Count) do
      begin
        lColuna.Text := StringReplace(lLinha.Strings[I], ';', #13, [rfReplaceAll]);
        lDados := TDados.Create();
        lDados.Nome := lColuna.Strings[0];
        lDados.CPF := lColuna.Strings[1];
        lDados.Email := lColuna.Strings[2];
        pListaDeDados.Add(lDados.CPF, lDados);
      end;

  finally
    lColuna.Free;
    lLinha.Free;
  end;
end;

end.
