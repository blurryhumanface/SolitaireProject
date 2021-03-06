unit UMainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,UClockForm,UMontanaForm;

type
  TMainMenu = class(TForm)
    ClockButton: TButton;
    MontanaButton: TButton;
    procedure ClockButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MontanaButtonClick(Sender: TObject);
    procedure FormOwnerSet(Sender: TObject);
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
  ClockForm.Show;
  ShowWindow(Application.Handle, SW_SHOW)
end;

procedure TMainMenu.FormCreate(Sender: TObject);
begin
  MainMenu.Show;
end;

procedure TMainMenu.FormOwnerSet(Sender: TObject);
begin
  ShowWindow(Application.Handle, SW_SHOW)
end;

procedure TMainMenu.MontanaButtonClick(Sender: TObject);
begin
  MainMenu.Hide;
  MontanaForm.Show;
  ShowWindow(Application.Handle, SW_SHOW)
end;

end.
