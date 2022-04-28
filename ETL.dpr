program ETL;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form2},
  Model.Arquivo.CSV.OCP in 'Model\Model.Arquivo.CSV.OCP.pas',
  Model.Arquivo.OCP in 'Model\Model.Arquivo.OCP.pas',
  Model.Arquivo.TXT.OCP in 'Model\Model.Arquivo.TXT.OCP.pas',
  Model.Dados.OCP in 'Model\Model.Dados.OCP.pas',
  Model.Leitor.OCP in 'Model\Model.Leitor.OCP.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
