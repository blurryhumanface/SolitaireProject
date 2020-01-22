unit UClockForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,UClock;

type
  TClockForm = class(TForm)
    CHand13Button: TButton;
    CHand14Button: TButton;
    CHand16Button: TButton;
    CHand15Button: TButton;
    CHand12Button: TButton;
    CHand1Button: TButton;
    CHand2Button: TButton;
    CHand3Button: TButton;
    CHand4Button: TButton;
    CHand5Button: TButton;
    CHand6Button: TButton;
    CHand7Button: TButton;
    CHand8Button: TButton;
    CHand9Button: TButton;
    CHand10Button: TButton;
    CHand11Button: TButton;
    CHand28Button: TButton;
    CHand17Button: TButton;
    CHand18Button: TButton;
    CHand19Button: TButton;
    CHand20Button: TButton;
    CHand21Button: TButton;
    CHand22Button: TButton;
    CHand23Button: TButton;
    CHand24Button: TButton;
    CHand25Button: TButton;
    CHand26Button: TButton;
    CHand27Button: TButton;
    procedure CHand12ButtonClick(Sender: TObject);
    procedure CHand1ButtonClick(Sender: TObject);
    procedure CHand2ButtonClick(Sender: TObject);
    procedure CHand3ButtonClick(Sender: TObject);
    procedure CHand4ButtonClick(Sender: TObject);
    procedure CHand5ButtonClick(Sender: TObject);
    procedure CHand6ButtonClick(Sender: TObject);
    procedure CHand7ButtonClick(Sender: TObject);
    procedure CHand8ButtonClick(Sender: TObject);
    procedure CHand9ButtonClick(Sender: TObject);
    procedure CHand10ButtonClick(Sender: TObject);
    procedure CHand11ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure turnOffButtons;
    procedure turnOnButtons;
    procedure newGame;
  end;

var
  ClockForm: TClockForm;

implementation

{$R *.dfm}

procedure TClockForm.CHand10ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  ClockGame.MoveCard(CHand10,j);
  if j=true then
    showMessage('Game Over');
  turnOffButtons;
end;

procedure TClockForm.CHand11ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  ClockGame.MoveCard(CHand11,j);
  if j=true then
    showMessage('Game Over');
  turnOffButtons;
end;

procedure TClockForm.CHand12ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  ClockGame.MoveCard(CHand12,j);
  if j=true then
    showMessage('Game Over');
  turnOffButtons;
end;

procedure TClockForm.CHand1ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  ClockGame.MoveCard(CHand1,j);
  if j=true then
    showMessage('Game Over');
  turnOffButtons;
end;

procedure TClockForm.CHand2ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  ClockGame.MoveCard(CHand2,j);
  if j=true then
    showMessage('Game Over');
  turnOffButtons;
end;

procedure TClockForm.CHand3ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  ClockGame.MoveCard(CHand3,j);
  if j=true then
    showMessage('Game Over');
  turnOffButtons;
end;

procedure TClockForm.CHand4ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  ClockGame.MoveCard(CHand4,j);
  if j=true then
    showMessage('Game Over');
  turnOffButtons;
end;

procedure TClockForm.CHand5ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  ClockGame.MoveCard(CHand5,j);
  if j=true then
    showMessage('Game Over');
  turnOffButtons;
end;

procedure TClockForm.CHand6ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  ClockGame.MoveCard(CHand6,j);
  if j=true then
    showMessage('Game Over');
  turnOffButtons;
end;

procedure TClockForm.CHand7ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  ClockGame.MoveCard(CHand7,j,i);
  if j=true then
    showMessage('Game Over');
  turnOffButtons;
end;

procedure TClockForm.CHand8ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  ClockGame.MoveCard(CHand8,j);
  if j=true then
    showMessage('Game Over');
  turnOffButtons;
end;

procedure TClockForm.CHand9ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  ClockGame.MoveCard(CHand9,j);
  if j=true then
    showMessage('Game Over');
  turnOffButtons;
end;

procedure TClockForm.newGame;
begin
  turnOnButtons;
  CHand13.Last.FlipCard;
end;

procedure TClockForm.turnOffButtons;
begin
  CHand1Button.Enabled:=false;
  CHand2Button.Enabled:=false;
  CHand3Button.Enabled:=false;
  CHand4Button.Enabled:=false;
  CHand5Button.Enabled:=false;
  CHand6Button.Enabled:=false;
  CHand8Button.Enabled:=false;
  CHand9Button.Enabled:=false;
  CHand10Button.Enabled:=false;
  CHand11Button.Enabled:=false;
  CHand12Button.Enabled:=false;
end;

procedure TClockForm.turnOnButtons;
begin
  CHand1Button.Enabled:=true;
  CHand2Button.Enabled:=true;
  CHand3Button.Enabled:=true;
  CHand4Button.Enabled:=true;
  CHand5Button.Enabled:=true;
  CHand6Button.Enabled:=true;
  CHand8Button.Enabled:=true;
  CHand9Button.Enabled:=true;
  CHand10Button.Enabled:=true;
  CHand11Button.Enabled:=true;
  CHand12Button.Enabled:=true;
end;

end.
