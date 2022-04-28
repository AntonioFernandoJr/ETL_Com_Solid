program ETLTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  Model.Leitor.OCP in '..\Model\Model.Leitor.OCP.pas',
  Model.Arquivo.OCP in '..\Model\Model.Arquivo.OCP.pas',
  Model.Arquivo.CSV.OCP in '..\Model\Model.Arquivo.CSV.OCP.pas',
  Model.Arquivo.TXT.OCP in '..\Model\Model.Arquivo.TXT.OCP.pas',
  Test.Model.Leitor in 'Test.Model.Leitor.pas',
  Model.Dados.OCP in '..\Model\Model.Dados.OCP.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

