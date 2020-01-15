unit UMainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainMenu = class(TForm)
    ClockButton: TButton;
    procedure ClockButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainMenu: TMainMenu;

implementation

{$R *.dfm}

procedure TMainMenu.ClockButtonClick(Sender: TObject);
begin
  MainMenu.Hide;
end;

procedure TMainMenu.FormCreate(Sender: TObject);
begin
  MainMenu.Show;
end;

end.
