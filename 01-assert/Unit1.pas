unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
    procedure TestsDivers;
  public
    { Déclarations publiques }
    function Ajoute(a, b: integer): integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

function TForm1.Ajoute(a, b: integer): integer;
begin
  result := a + b;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Label2.Text := Ajoute(Edit1.Text.ToInteger, Edit2.Text.ToInteger).ToString;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
{$IFDEF DEBUG}
  TestsDivers;
{$ENDIF}
end;

procedure TForm1.TestsDivers;
begin
{$IFDEF DEBUG}
  assert(Ajoute(0, 10) = 10, 'erreur TForm1.ajoute');
  assert(Ajoute(-30, 30) = 0, 'erreur TForm1.ajoute');
  assert(Ajoute(5421, 67524) = 72945, 'erreur TForm1.ajoute');
  // assert(Ajoute(0, 10) = 0, 'erreur TForm1.ajoute');
{$ENDIF}
end;

end.
