unit Model.Leitor.OCP;

interface

uses
  System.SysUtils, Model.Arquivo.OCP, System.Generics.Collections, Model.Dados.OCP;

type

  TLeitor = class
  private
    FDiretorio: String;
    FArquivo: String;
    FGerenciadorArquivo: IArquivo;
    FListaDeDados: TDictionary<String, IDados>;
  public
    destructor Destroy; override;
    constructor Create(pDiretorio, pArquivo: String);
    property Diretrio: String read FDiretorio;
    property Arquivo: String read FArquivo;
    property ListaDeDados: TDictionary<String, IDados> read FListaDeDados write FListaDeDados;
    procedure LerArquivo(pGerenciador: IArquivo);
  end;

implementation

{ TLeitor }



destructor TLeitor.Destroy;
begin
  FListaDeDados.Free;
  inherited;
end;

procedure TLeitor.LerArquivo(pGerenciador: IArquivo);
begin
  FListaDeDados := TDictionary<String, IDados>.Create();
  FGerenciadorArquivo := pGerenciador;
  FGerenciadorArquivo.LerArquivo(Self.Diretrio + '/' + Self.Arquivo, FListaDeDados);
end;


constructor TLeitor.Create(pDiretorio, pArquivo: String);
begin
  FDiretorio := pDiretorio;
  FArquivo := pArquivo;
end;

end.
