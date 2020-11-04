program TestProject;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  MiniTestFramework in 'MiniTestFramework.pas',
  Unit1 in '..\Unit1.pas' {Form1} ,
  TestUnit1 in 'TestUnit1.pas';

begin
  try
    Title('Tests pour webinaire du 3 novembre 2020');
    TestForm1;
    TestSummary;
    readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
