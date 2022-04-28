unit Test.Model.Arquivo;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, System.Classes, System.Generics.Collections, Model.Arquivo.OCP,
  Model.Arquivo.CSV.OCP, Model.Arquivo.TXT.OCP, Model.Leitor.OCP;

type
  // Test methods for class TArquivo

  TestTArquivo = class(TTestCase)
  strict private

  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestarLeituraDeArquivoCSV();
    procedure TestarLeituraDeArquivoTXT();
  end;

implementation

procedure TestTArquivo.SetUp;
begin
  //FArquivo := TArquivo.Create;
end;

procedure TestTArquivo.TearDown;
begin
  //FArquivo.Free;
  //FArquivo := nil;
end;

procedure TestTArquivo.TestarLeituraDeArquivoTXT;
var
  lTxt: TTxt;
  lLeitor: TLeitor;
begin
  {lLeitor := TLeitor.Create('../Arquivos', 'dados.txt');
  try
    lTxt := TTxt.Create(lLeitor);
      try
        lTxt.LerArquivo();
        CheckEquals(4, lTxt.ListaDeDados.Count, 'A quatidade de dados extra�dos n�o est� correta');
        CheckTrue(lTxt.ListaDeDados.TryGetValue('35495984080' ,lDados), 'CPF n�o foi encontrado na lista');
        CheckEquals('Gustavo Santos', lDados.Nome);

      finally
        lTxt.Free;
      end;
  finally
    lLeitor.Free
  end;}
end;

procedure TestTArquivo.TestarLeituraDeArquivoCSV;
var
  lCSV: TCSV;
  lLeitor: TLeitor;
begin
  {lLeitor := TLeitor.Create('../Arquivos', 'dados.csv');
  try
    lCSV := TCSV.Create(lLeitor);
      try
        lCSV.LerArquivo();
        CheckEquals(4, lCSV.ListaDeDados.Count, 'A quatidade de dados extra�dos n�o est� correta');
        CheckTrue(lCSV.ListaDeDados.TryGetValue('405.986.210-08' ,lDados), 'CPF n�o foi encontrado na lista');
        CheckEquals('Fernanda Silva', lDados.Nome);
      finally
        lCSV.Free;
      end;
  finally
    lLeitor.Free
  end; }
end;


initialization
  // Register any test cases with the test runner
  RegisterTest(TestTArquivo.Suite);
end.
