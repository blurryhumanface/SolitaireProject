unit UMainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,UClockForm,UInstructions;

type
  TMainMenu = class(TForm)
    ClockButton: TButton;
    procedure ClockButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainMenu: TMainMenu;

implementation

{$R *.dfm}

procedure TMainMenu.Button1Click(Sender: TObject);
begin
  MainMenu.Hide;
  InstructionsForm.Show;
  InstructionsForm.writeInstructions(3);
end;

procedure TMainMenu.ClockButtonClick(Sender: TObject);
begin
  MainMenu.Hide;
  ClockForm.Show;
end;

procedure TMainMenu.FormCreate(Sender: TObject);
begin
  MainMenu.Show;
end;

end.
