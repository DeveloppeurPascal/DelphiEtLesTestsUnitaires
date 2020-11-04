unit Unit2;

interface

uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TTestForm1 = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure Test1;
    [Test]
    procedure Test2;
    [Test]
    [TestCase('test 1+1', '1,1,2')]
    [TestCase('test 10+100', '10,100,100')]
    [TestCase('test 40+2', '40,2,42')]
    [TestCase('test 10+100', '10,100,110')]
    procedure Test3(a, b, result: integer);
    [Test]
    [TestCase('test I1', '1')]
    [TestCase('test I2', '2')]
    [TestCase('test I3', '3')]
    procedure Test4(i: integer);
  end;

implementation

uses Unit1, System.SysUtils;

procedure TTestForm1.Setup;
begin
  form1 := tform1.Create(nil);
end;

procedure TTestForm1.TearDown;
begin
  freeandnil(form1);
end;

procedure TTestForm1.Test1;
begin
  Assert.Pass('ok');
end;

procedure TTestForm1.Test2;
begin
  Assert.Fail('pas ok');
end;

procedure TTestForm1.Test3(a, b, result: integer);
begin
  Assert.AreEqual(form1.Ajoute(a, b), result, 'TForm1.Ajoute ok');
end;

procedure TTestForm1.Test4(i: integer);
begin
  if i mod 2 = 0 then
    Assert.Pass(i.ToString + ' pair')
  else
    Assert.Fail(i.ToString + ' impair');
end;

initialization

TDUnitX.RegisterTestFixture(TTestForm1);

end.
