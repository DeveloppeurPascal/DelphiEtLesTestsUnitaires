program Project1Tests;
{

  Projet de test DUnit Delphi
  -------------------------
  Ce projet contient le framework de test DUnit et les exécuteurs de test GUI/Console.
  Ajoutez "CONSOLE_TESTRUNNER" à l'entrée des définitions conditionnelles des options
  de projet pour utiliser l'exécuteur de test console.  Sinon, l'exécuteur de test GUI sera
  utilisé par défaut.

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

