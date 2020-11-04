unit TestUnit1;

interface

procedure TestForm1;

implementation

uses Unit1, MiniTestFramework;

procedure TestForm1;
var
  frm: tform1;
begin
  frm := tform1.Create(nil);
  try
    newtest('cas de test', 'nom du test');
    CheckIsEqual(10, frm.Ajoute(1, 9), 'message 1');
    CheckIsEqual(100, frm.Ajoute(10, 90), 'message 2');
    CheckIsEqual(33, frm.Ajoute(1, 9), 'message 3');
    CheckIsEqual(42, frm.Ajoute(39, 3), 'message 4');
  finally
    frm.Free;
  end;
end;

end.
