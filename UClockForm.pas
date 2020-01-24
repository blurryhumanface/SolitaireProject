unit UClockForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,UClock,UCards;

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
    procedure FormCreate(Sender: TObject);
    procedure CHand13ButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateItems;
  public
    { Public declarations }
    procedure turnOffButtons;
    procedure turnOnButtons;
    procedure newGame;
    procedure turnNextCard(i:integer);
    procedure editButtonCaption(i:integer);
    procedure editAllButtonCaptions;
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
  if CHand10.Last.GetOrientation=face then
  begin
    ClockGame.MoveCard(CHand10,j,i);
    if j=true then
    begin
      showMessage('Game Over');
      turnOffButtons;
    end
    else
      turnNextCard(i);
  end;
end;

procedure TClockForm.CHand11ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand11.Last.GetOrientation=face then
  begin
    ClockGame.MoveCard(CHand11,j,i);
     if j=true then
    begin
      showMessage('Game Over');
      turnOffButtons;
    end
    else
      turnNextCard(i);
  end;
end;

procedure TClockForm.CHand12ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand12.Last.GetOrientation=face then
  begin
    ClockGame.MoveCard(CHand12,j,i);
     if j=true then
    begin
      showMessage('Game Over');
      turnOffButtons;
    end
    else
      turnNextCard(i);
  end;
end;

procedure TClockForm.CHand13ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  ClockGame.MoveCard(CHand13,j,i);
  turnNextCard(i);
  CHand13Button.Enabled:=False;
end;

procedure TClockForm.CHand1ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand1.Last.GetOrientation=face then
  begin
    ClockGame.MoveCard(CHand1,j,i);
     if j=true then
    begin
      showMessage('Game Over');
      turnOffButtons;
    end
    else
      turnNextCard(i);
  end;
end;

procedure TClockForm.CHand2ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand2.Last.GetOrientation=face then
    begin
    ClockGame.MoveCard(CHand2,j,i);
     if j=true then
    begin
      showMessage('Game Over');
      turnOffButtons;
    end
    else
      turnNextCard(i);
  end;
end;

procedure TClockForm.CHand3ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand3.Last.GetOrientation=face then
  begin
    ClockGame.MoveCard(CHand3,j,i);
     if j=true then
    begin
      showMessage('Game Over');
      turnOffButtons;
    end
    else
      turnNextCard(i);
  end;
end;

procedure TClockForm.CHand4ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand4.Last.GetOrientation=face then
  begin
    ClockGame.MoveCard(CHand4,j,i);
     if j=true then
    begin
      showMessage('Game Over');
      turnOffButtons;
    end
    else
      turnNextCard(i);
  end;
end;

procedure TClockForm.CHand5ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand5.Last.GetOrientation=face then
    begin
    ClockGame.MoveCard(CHand5,j,i);
     if j=true then
    begin
      showMessage('Game Over');
      turnOffButtons;
    end
    else
      turnNextCard(i);
  end;
end;

procedure TClockForm.CHand6ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand6.Last.GetOrientation=face then
  begin
    ClockGame.MoveCard(CHand6,j,i);
     if j=true then
    begin
      showMessage('Game Over');
      turnOffButtons;
    end
    else
      turnNextCard(i);
  end;
end;

procedure TClockForm.CHand7ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand7.Last.GetOrientation=face then
  begin
    ClockGame.MoveCard(CHand7,j,i);
     if j=true then
    begin
      showMessage('Game Over');
      turnOffButtons;
    end
    else
      turnNextCard(i);
  end;
end;

procedure TClockForm.CHand8ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand8.Last.GetOrientation = face then
  begin
    ClockGame.MoveCard(CHand8,j,i);
     if j=true then
    begin
      showMessage('Game Over');
      turnOffButtons;
    end
    else
      turnNextCard(i);
  end;
end;

procedure TClockForm.CHand9ButtonClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand9.Last.GetOrientation=face then
  begin
    ClockGame.MoveCard(CHand9,j,i);
     if j=true then
    begin
      showMessage('Game Over');
      turnOffButtons;
    end
    else
      turnNextCard(i);
  end;
end;

procedure TClockForm.CreateItems;
begin
  ClockGame:=TClockGame.Create;
end;

procedure TClockForm.editAllButtonCaptions;
var
  i:integer;
begin
  for i := 1 to 13 do
  begin
    editButtonCaption(i);
  end;


end;

procedure TClockForm.editButtonCaption(i:integer);
begin
  if ClockGame.Layout[i].Last.GetOrientation=back then
  begin
    case i of
      1:CHand1Button.Caption:='back';
      2:CHand2Button.Caption:='back';
      3:CHand3Button.Caption:='back';
      4:CHand4Button.Caption:='back';
      5:CHand5Button.Caption:='back';
      6:CHand6Button.Caption:='back';
      7:CHand7Button.Caption:='back';
      8:CHand8Button.Caption:='back';
      9:CHand9Button.Caption:='back';
      10:CHand10Button.Caption:='back';
      11:CHand11Button.Caption:='back';
      12:CHand12Button.Caption:='back';
      13:CHand13Button.Caption:='back';
      14:CHand14Button.Caption:='back';
      15:CHand15Button.Caption:='back';
      16:CHand16Button.Caption:='back';
    end;
  end
  else
  begin
    case i of
     1:begin
      CHand1Button.Caption:=CHand1.Last.GetName;
     end;
     2:begin
      CHand2Button.Caption:=CHand2.Last.GetName;
     end;
     3:begin
      CHand3Button.Caption:=CHand3.Last.GetName;
     end;
     4:begin
      CHand4Button.Caption:=CHand4.Last.GetName;
     end;
     5:begin
      CHand5Button.Caption:=CHand5.Last.GetName;
     end;
     6:begin
      CHand6Button.Caption:=CHand6.Last.GetName;
     end;
     7:begin
      CHand7Button.Caption:=CHand7.Last.GetName;
     end;
     8:begin
      CHand8Button.Caption:=CHand8.Last.GetName;
     end;
     9:begin
      CHand9Button.Caption:=CHand9.Last.GetName;
     end;
     10:begin
      CHand10Button.Caption:=CHand10.Last.GetName;
     end;
     11:begin
      CHand11Button.Caption:=CHand11.Last.GetName;
     end;
     12:begin
      CHand12Button.Caption:=CHand12.Last.GetName;
     end;
     13:begin
      CHand13Button.Caption:=CHand13.Last.GetName;
     end;
     14:begin
      CHand14Button.Caption:=CHand14.Last.GetName;
     end;
     15:begin
      CHand15Button.Caption:=CHand15.Last.GetName;
     end;
     16:begin
      CHand16Button.Caption:=CHand16.Last.GetName;
     end;
     17:begin
      CHand17Button.Caption:=CHand17.Last.GetName;
     end;
     18:begin
      CHand18Button.Caption:=CHand18.Last.GetName;
     end;
     19:begin
      CHand19Button.Caption:=CHand19.Last.GetName;
     end;
     20:begin
      CHand20Button.Caption:=CHand20.Last.GetName;
     end;
     21:begin
      CHand21Button.Caption:=CHand21.Last.GetName;
     end;
     22:begin
      CHand22Button.Caption:=CHand22.Last.GetName;
     end;
     23:begin
      CHand23Button.Caption:=CHand23.Last.GetName;
     end;
     24:begin
      CHand24Button.Caption:=CHand24.Last.GetName;
     end;
     25:begin
      CHand25Button.Caption:=CHand25.Last.GetName;
     end;
     26:begin
      CHand26Button.Caption:=CHand26.Last.GetName;
     end;
     27:begin
      CHand27Button.Caption:=CHand27.Last.GetName;
     end;
     28:begin
      CHand28Button.Caption:=CHand28.Last.GetName;
     end;
    end;
  end;

end;

procedure TClockForm.FormCreate(Sender: TObject);
begin
  newGame;
end;

procedure TClockForm.newGame;
begin
  turnOnButtons;
  CreateItems;
  turnNextCard(13);
  editAllButtonCaptions;
end;

procedure TClockForm.turnNextCard(i: integer);
begin
  case i of
    1:begin
        CHand1Button.Caption:=CHand1.Last.GetName;
      end;
    2:begin
        CHand2Button.Caption:=CHand2.Last.GetName;
      end;
    3:begin
        CHand3Button.Caption:=CHand3.Last.GetName;
      end;
    4:begin
        CHand4Button.Caption:=CHand4.Last.GetName;
      end;
    5:begin
        CHand5Button.Caption:=CHand5.Last.GetName;
      end;
    6:begin
        CHand6Button.Caption:=CHand6.Last.GetName;
      end;
    7:begin
        CHand7Button.Caption:=CHand7.Last.GetName;
      end;
    8:begin
        CHand8Button.Caption:=CHand8.Last.GetName;
      end;
    9:begin
        CHand9Button.Caption:=CHand9.Last.GetName;
      end;
    10:begin
        CHand10Button.Caption:=CHand10.Last.GetName;
      end;
    11:begin
        CHand11Button.Caption:=CHand11.Last.GetName;
      end;
    12:begin
        CHand12Button.Caption:=CHand12.Last.GetName;
      end;
    13:begin
        if (CHand13Button.Enabled=true)and(CHand13.Size=1) then
        begin
          CHand13.Last.FlipCard;
          CHand13Button.Caption:=CHand13.Last.GetName;
        end
        else if (CHand14Button.Enabled=true)and(CHand14.Size=1) then
        begin
          CHand14.Last.FlipCard;
          CHand14Button.Caption:=CHand14.Last.GetName;
        end
        else if (CHand15Button.Enabled=true)and(CHand15.Size=1) then
        begin
          CHand15.Last.FlipCard;
          CHand15Button.Caption:=CHand15.Last.GetName;
        end
        else if (CHand16Button.Enabled=true)and(CHand16.Size=1) then
        begin
          CHand16.Last.FlipCard;
          CHand16Button.Caption:=CHand16.Last.GetName;
        end
      end;
  end;
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
