unit TestUnit1;

interface

uses
  TestFramework, FMX.Graphics, FMX.Dialogs, System.Types, System.SysUtils,
  FMX.Controls.Presentation, System.Variants, FMX.StdCtrls, System.UITypes,
  FMX.Edit,
  FMX.Types, Unit1, FMX.Forms, FMX.Controls, System.Classes;

type
  // Méthodes de test pour la classe TForm1

  TestTForm1 = class(TTestCase)
  strict private
    FForm1: TForm1;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestAjoute;
  end;

implementation

procedure TestTForm1.SetUp;
begin
  FForm1 := TForm1.Create(nil);
end;

procedure TestTForm1.TearDown;
begin
  FForm1.Free;
  FForm1 := nil;
end;

procedure TestTForm1.TestAjoute;
var
  ReturnValue: Integer;
  b: Integer;
  a: Integer;
begin
  a := 10;
  b := 54;
  ReturnValue := FForm1.Ajoute(a, b);
  CheckEquals(64, ReturnValue);
  a := 3;
  b := 5;
  ReturnValue := FForm1.Ajoute(a, b);
  CheckEquals(8, ReturnValue);
  a := 10;
  b := 50;
  ReturnValue := FForm1.Ajoute(a, b);
  CheckEquals(60, ReturnValue);
  // CheckEquals(70, ReturnValue);
  // Fail('glups');
end;

initialization

// Enregistrer tous les cas de test avec l'exécuteur de test
RegisterTest(TestTForm1.Suite);

end.
