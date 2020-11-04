program Project1Tests;
{

  Projet de test DUnit Delphi
  -------------------------
  Ce projet contient le framework de test DUnit et les ex�cuteurs de test GUI/Console.
  Ajoutez "CONSOLE_TESTRUNNER" � l'entr�e des d�finitions conditionnelles des options
  de projet pour utiliser l'ex�cuteur de test console.  Sinon, l'ex�cuteur de test GUI sera
  utilis� par d�faut.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestUnit1 in 'TestUnit1.pas',
  Unit1 in '..\Unit1.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

