unit Model.Arquivo.OCP;

interface

uses
  System.Classes, System.Generics.Collections, System.SysUtils, Model.Dados.OCP;

type
  IArquivo = interface
  ['{8F99EE14-81D4-48CE-B9AC-F0273F8B85A2}']
  procedure LerArquivo(pCaminho: String; pListaDeDados: TDictionary<String, IDados>);
  end;

  TArquivo = class(TInterfacedObject, IArquivo)
  public
    procedure LerArquivo(pCaminho: String; pListaDeDados: TDictionary<String, IDados> ); virtual; abstract;
  end;

implementation


end.
