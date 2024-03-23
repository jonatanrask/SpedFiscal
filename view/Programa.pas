unit Programa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Exportar1: TMenuItem;
    SpedFiscal1: TMenuItem;
    procedure SpedFiscal1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Sped;

{$R *.dfm}

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FormSped);
end;

procedure TForm1.SpedFiscal1Click(Sender: TObject);
begin

  if not Assigned(FormSped) then
    FormSped := TFormSped.Create(Application);

  FormSped.Show;
end;

end.
