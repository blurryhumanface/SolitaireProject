unit UClockForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, UClock, UCards
  ,UFileCreater,UMiddleStep, UInstructions;

type
  ImageArray28 = array[1..28] of TImage;
  TClockForm = class(TForm)
    CHand13Button: TButton;
    CHand14Button: TButton;
    CHand16Button: TButton;
    CHand15Button: TButton;
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
    MovesEdit: TEdit;
    NewGameButton: TButton;
    MainMenuButton: TButton;
    InstructionsButton: TButton;
    CHand1Image: TImage;
    CHand2Image: TImage;
    CHand13Image: TImage;
    CHand14Image: TImage;
    CHand3Image: TImage;
    CHand4Image: TImage;
    CHand5Image: TImage;
    CHand6Image: TImage;
    CHand7Image: TImage;
    CHand8Image: TImage;
    CHand9Image: TImage;
    CHand10Image: TImage;
    CHand11Image: TImage;
    CHand12Image: TImage;
    CHand15Image: TImage;
    CHand16Image: TImage;
    procedure FormCreate(Sender: TObject);
    procedure NewGameButtonClick(Sender: TObject);
    procedure MainMenuButtonClick(Sender: TObject);
    procedure InstructionsButtonClick(Sender: TObject);
    procedure CHand1ImageClick(Sender: TObject);
    procedure CHand2ImageClick(Sender: TObject);
    procedure CHand14ImageClick(Sender: TObject);
    procedure CHand3ImageClick(Sender: TObject);
    procedure CHand4ImageClick(Sender: TObject);
    procedure CHand5ImageClick(Sender: TObject);
    procedure CHand6ImageClick(Sender: TObject);
    procedure CHand7ImageClick(Sender: TObject);
    procedure CHand8ImageClick(Sender: TObject);
    procedure CHand9ImageClick(Sender: TObject);
    procedure CHand10ImageClick(Sender: TObject);
    procedure CHand11ImageClick(Sender: TObject);
    procedure CHand12ImageClick(Sender: TObject);
    procedure CHand13ImageClick(Sender: TObject);
    procedure CHand15ImageClick(Sender: TObject);
    procedure CHand16ImageClick(Sender: TObject);
  private
    { Private declarations }
    moves:integer;
    ended:boolean;
    Images:ImageArray28;
    procedure CreateItems;
    procedure sayOrientation(card:TCard);
    procedure turnAllCardsOver(var hand:TClockHand);
    procedure assignImagestoArray;
    procedure getImage(Hand:TClockHand; var img:TBitmap);
  public
    { Public declarations }
    procedure turnOffImages;
    procedure turnOnImages;
    procedure newGame;
    procedure turnNextCard(i:integer);
    procedure editButtonCaption(i:integer);
    procedure editAllButtonCaptions;
    procedure editMiddleButtonCaptions(i:integer);
    procedure incrementMoveCounter;
    procedure textToFile(str:string);
    procedure EndGame;
    procedure changeImage(i:TImage; Hand:TClockHand);
    procedure changeImages(a:ImageArray28);
  end;

var
  ClockForm: TClockForm;

implementation

{$R *.dfm}

procedure TClockForm.assignImagestoArray;
begin
  Images[1]:=CHand1Image;
  Images[2]:=CHand2Image;
  Images[3]:=CHand3Image;
  Images[4]:=CHand4Image;
  Images[5]:=CHand5Image;
  Images[6]:=CHand6Image;
  Images[7]:=CHand7Image;
  Images[8]:=CHand8Image;
  Images[9]:=CHand9Image;
  Images[10]:=CHand10Image;
  Images[11]:=CHand11Image;
  Images[12]:=CHand12Image;
  Images[13]:=CHand13Image;
  Images[14]:=CHand14Image;
  Images[15]:=CHand15Image;
  Images[16]:=CHand16Image;
  changeImages(Images);
end;

procedure TClockForm.CHand10ImageClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand10.Last.GetOrientation=face then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand10,j,i);
    if CHand10.Size=0 then
    begin
      CHand10Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>10 then
    begin
      turnAllCardsOver(CHand10);
    end;
    changeImage(CHand10Image,CHand10);
    editButtonCaption(26);
    editMiddleButtonCaptions(i);
    if j=true then
    begin
      EndGame;
      ended:=True;
    end;
  end;
end;

procedure TClockForm.CHand11ImageClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand11.Last.GetOrientation=face then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand11,j,i);
    if CHand11.Size=0 then
    begin
      CHand11Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>11 then
    begin
      turnAllCardsOver(CHand11);
    end;
    changeImage(CHand11Image,CHand11);
    editButtonCaption(27);
    editMiddleButtonCaptions(i);
     if j=true then
    begin
      EndGame;
      ended:=True;
    end;
  end;
end;

procedure TClockForm.CHand12ImageClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand12.Last.GetOrientation=face then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand12,j,i);
    if CHand12.Size=0 then
    begin
      CHand12Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>12 then
    begin
      turnAllCardsOver(CHand12);
    end;
    changeImage(CHand12Image,CHand12);
    editButtonCaption(28);
    editMiddleButtonCaptions(i);
     if j=true then
    begin
      EndGame;
      ended:=True;
    end;
  end;
end;


procedure TClockForm.CHand13ImageClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand13.Last.GetOrientation=face then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand13,j,i);
    turnNextCard(i);
    CHand13Image.Enabled:=False;
    ChangeImage(CHand13Image,CHand13);
    editMiddleButtonCaptions(i);
  end;
end;

procedure TClockForm.CHand14ImageClick(Sender: TObject);
var
  i:integer;
  j:boolean;
begin
  if (CHand13.Size=1)and(CHand13Image.Enabled=false) then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand14,j,i);
    turnNextCard(i);
    CHand14Image.Enabled:=False;
    ChangeImage(CHand14Image,CHand14);
    editMiddleButtonCaptions(i);
  end;
end;

procedure TClockForm.CHand15ImageClick(Sender: TObject);
var
  i:integer;
  j:boolean;
begin
  if (CHand13.Size=1)and(CHand14.Size=1)and(CHand14Image.Enabled=false) then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand15,j,i);
    turnNextCard(i);
    CHand15Image.Enabled:=False;
    ChangeImage(CHand15Image,CHand15);
    editMiddleButtonCaptions(i);
  end;
end;


procedure TClockForm.CHand16ImageClick(Sender: TObject);
var
  i:integer;
  j:boolean;
begin
  if (CHand13.Size=1)and(CHand14.Size=1)and(CHand15.Size=1)and(CHand15Image.Enabled=false) then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand16,j,i);
    turnNextCard(i);
    CHand16Image.Enabled:=False;
    ChangeImage(CHand16Image,CHand16);
    editMiddleButtonCaptions(i);
    if j=True then
    begin
      EndGame;
      ended:=True;
    end;
  end;
end;


procedure TClockForm.CHand1ImageClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand1.Last.GetOrientation=face then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand1,j,i);
    if CHand1.Size=0 then
    begin
      CHand1Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>1 then
    begin
      turnAllCardsOver(CHand1);
    end;
    changeImage(CHand1Image,CHand1);
    editButtonCaption(17);
    editMiddleButtonCaptions(i);
     if j=true then
    begin
      EndGame;
      ended:=True;
    end;
  end;
end;


procedure TClockForm.CHand2ImageClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand2.Last.GetOrientation=face then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand2,j,i);
    if CHand2.Size=0 then
    begin
      CHand2Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>2 then
    begin
      turnAllCardsOver(CHand2);
    end;
    changeImage(CHand2Image,CHand2);
    editButtonCaption(18);
    editMiddleButtonCaptions(i);
     if j=true then
    begin
      EndGame;
      ended:=True;
    end;
  end;
end;


procedure TClockForm.CHand3ImageClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand3.Last.GetOrientation=face then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand3,j,i);
    if CHand3.Size=0 then
    begin
      CHand3Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>3 then
    begin
      turnAllCardsOver(CHand3);
    end;
    changeImage(CHand3Image,CHand3);
    editButtonCaption(19);
    editMiddleButtonCaptions(i);
     if j=true then
    begin
      EndGame;
      ended:=True;
    end;
  end;
end;

procedure TClockForm.CHand4ImageClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand4.Last.GetOrientation=face then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand4,j,i);
    if CHand4.Size=0 then
    begin
      CHand4Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>4 then
    begin
      turnAllCardsOver(CHand4);
    end;
    changeImage(CHand4Image,CHand4);
    editButtonCaption(20);
    editMiddleButtonCaptions(i);
     if j=true then
    begin
      EndGame;
      ended:=True;
    end;
  end;
end;


procedure TClockForm.CHand5ImageClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand5.Last.GetOrientation=face then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand5,j,i);
    if CHand5.Size=0 then
    begin
      CHand5Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>5 then
    begin
      turnAllCardsOver(CHand5);
    end;
    changeImage(CHand5Image,CHand5);
    editButtonCaption(21);
    editMiddleButtonCaptions(i);
     if j=true then
    begin
      EndGame;
      ended:=True;
    end;
  end;
end;


procedure TClockForm.CHand6ImageClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand6.Last.GetOrientation=face then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand6,j,i);
    if CHand6.Size=0 then
    begin
      CHand6Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>6 then
    begin
      turnAllCardsOver(CHand6);
    end;
    changeImage(CHand6Image,CHand6);
    editButtonCaption(22);
    editMiddleButtonCaptions(i);
     if j=true then
    begin
      EndGame;
      ended:=True;
    end;
  end;
end;


procedure TClockForm.CHand7ImageClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand7.Last.GetOrientation=face then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand7,j,i);
    if CHand7.Size=0 then
    begin
      CHand7Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>7 then
    begin
      turnAllCardsOver(CHand7);
    end;
    changeImage(CHand7Image,CHand7);
    editButtonCaption(23);
    editMiddleButtonCaptions(i);
     if j=true then
    begin
      EndGame;
      ended:=True;
    end;
  end;
end;


procedure TClockForm.CHand8ImageClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand8.Last.GetOrientation = face then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand8,j,i);
    if CHand8.Size=0 then
    begin
      CHand8Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>8 then
    begin
      turnAllCardsOver(CHand8);
    end;
    changeImage(CHand8Image,CHand8);
    editButtonCaption(24);
    editMiddleButtonCaptions(i);
     if j=true then
    begin
      EndGame;
      ended:=True;
    end;
  end;
end;


procedure TClockForm.CHand9ImageClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand9.Last.GetOrientation=face then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand9,j,i);
    if CHand9.Size=0 then
    begin
      CHand9Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>9 then
    begin
      turnAllCardsOver(CHand9);
    end;
    changeImage(CHand9Image,CHand9);
    editButtonCaption(25);
    editMiddleButtonCaptions(i);
     if j=true then
    begin
      EndGame;
      ended:=True;
    end;
  end;
end;

procedure TClockForm.changeImage(i: TImage; Hand:TClockHand);
var
  cardImage:TBitmap;
begin
  cardImage:=TBitmap.Create;
  getImage(Hand,cardImage);
  i.Canvas.StretchDraw(i.ClientRect,cardImage);
end;

procedure TClockForm.changeImages(a: ImageArray28);
begin
  changeImage(a[1],CHand1);
  changeImage(a[2],CHand2);
  changeImage(a[3],CHand3);
  changeImage(a[4],CHand4);
  changeImage(a[5],CHand5);
  changeImage(a[6],CHand6);
  changeImage(a[7],CHand7);
  changeImage(a[8],CHand8);
  changeImage(a[9],CHand9);
  changeImage(a[10],CHand10);
  changeImage(a[11],CHand11);
  changeImage(a[12],CHand12);
  changeImage(a[13],CHand13);
  changeImage(a[14],CHand14);
  changeImage(a[15],CHand15);
  changeImage(a[16],CHand16);
end;

procedure TClockForm.CreateItems;
begin
  ClockGame:=TClockGame.Create;
end;



procedure TClockForm.editAllButtonCaptions;
var
  i:integer;
begin
  for i := 1 to 16 do
  begin
    editButtonCaption(i);
  end;
end;

procedure TClockForm.editButtonCaption(i:integer);
begin
  if ClockGame.Layout[i].Size=0 then
  begin
    case i of
//     1:CHand1Button.Caption:='Empty';
//     2:CHand2Button.Caption:='Empty';
//     3:CHand3Button.Caption:='Empty';
//     4:CHand4Button.Caption:='Empty';
//     5:CHand5Button.Caption:='Empty';
//     6:CHand6Button.Caption:='Empty';
//     7:CHand7Button.Caption:='Empty';
//     8:CHand8Button.Caption:='Empty';
//     9:CHand9Button.Caption:='Empty';
//     10:CHand10Button.Caption:='Empty';
//     11:CHand11Button.Caption:='Empty';
//     12:CHand12Button.Caption:='Empty';
     13:CHand13Button.Caption:='Empty';
     14:CHand14Button.Caption:='Empty';
     15:CHand15Button.Caption:='Empty';
     16:CHand16Button.Caption:='Empty';
     17:CHand17Button.Caption:='Empty';
     18:CHand18Button.Caption:='Empty';
     19:CHand19Button.Caption:='Empty';
     20:CHand20Button.Caption:='Empty';
     21:CHand21Button.Caption:='Empty';
     22:CHand22Button.Caption:='Empty';
     23:CHand23Button.Caption:='Empty';
     24:CHand24Button.Caption:='Empty';
     25:CHand25Button.Caption:='Empty';
     26:CHand26Button.Caption:='Empty';
     27:CHand27Button.Caption:='Empty';
     28:CHand28Button.Caption:='Empty';
    end;
  end
  else if ClockGame.Layout[i].Last.GetOrientation=back then
  begin
    case i of
//      1:CHand1Button.Caption:='Back';
//      2:CHand2Button.Caption:='Back';
//      3:CHand3Button.Caption:='Back';
//      4:CHand4Button.Caption:='Back';
//      5:CHand5Button.Caption:='Back';
//      6:CHand6Button.Caption:='Back';
//      7:CHand7Button.Caption:='Back';
//      8:CHand8Button.Caption:='Back';
//      9:CHand9Button.Caption:='Back';
//      10:CHand10Button.Caption:='Back';
//      11:CHand11Button.Caption:='Back';
//      12:CHand12Button.Caption:='Back';
      13:CHand13Button.Caption:='Back';
      14:CHand14Button.Caption:='Back';
      15:CHand15Button.Caption:='Back';
      16:CHand16Button.Caption:='Back';
    end;
  end
  else
  begin
    case i of
//     1:begin
//      CHand1Button.Caption:=CHand1.Last.GetName;
//     end;
//     2:begin
//      CHand2Button.Caption:=CHand2.Last.GetName;
//     end;
//     3:begin
//      CHand3Button.Caption:=CHand3.Last.GetName;
//     end;
//     4:begin
//      CHand4Button.Caption:=CHand4.Last.GetName;
//     end;
//     5:begin
//      CHand5Button.Caption:=CHand5.Last.GetName;
//     end;
//     6:begin
//      CHand6Button.Caption:=CHand6.Last.GetName;
//     end;
//     7:begin
//      CHand7Button.Caption:=CHand7.Last.GetName;
//     end;
//     8:begin
//      CHand8Button.Caption:=CHand8.Last.GetName;
//     end;
//     9:begin
//      CHand9Button.Caption:=CHand9.Last.GetName;
//     end;
//     10:begin
//      CHand10Button.Caption:=CHand10.Last.GetName;
//     end;
//     11:begin
//      CHand11Button.Caption:=CHand11.Last.GetName;
//     end;
//     12:begin
//      CHand12Button.Caption:=CHand12.Last.GetName;
//     end;
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

procedure TClockForm.editMiddleButtonCaptions(i: integer);
begin
  ChangeImage(CHand13Image,CHand13);
  ChangeImage(CHand14Image,CHand14);
  ChangeImage(CHand15Image,CHand15);
  ChangeImage(CHand16Image,CHand16);
end;

procedure TClockForm.EndGame;
begin
  showMessage('Game Over');
  turnOffImages;
  ClockGame.Destroy;
end;

procedure TClockForm.FormCreate(Sender: TObject);
var
  i:integer;
begin
  newGame;
  assignImagestoArray;
end;



procedure TClockForm.getImage(Hand: TClockHand; var img: TBitmap);
begin
  if Hand.Size=0 then
  begin
    img.LoadFromFile('card-BMPs\blank.bmp');
  end
  else if Hand.Size>0 then
  begin
    if Hand.Last.GetOrientation=back then
    begin
      img.LoadFromFile('card-BMPs\b1fv.bmp');
    end
    else
    if Hand.Last.GetOrientation=face then
    begin
      case Hand.Last.GetRank of
        1:begin
          case Hand.Last.GetSuit of
            0: img.LoadFromFile('card-BMPs\d01.bmp');
            1: img.LoadFromFile('card-BMPs\s01.bmp');
            2: img.LoadFromFile('card-BMPs\h01.bmp');
            3: img.LoadFromFile('card-BMPs\c01.bmp');
          end;
        end;
        2:begin
          case Hand.Last.GetSuit of
            0: img.LoadFromFile('card-BMPs\d02.bmp');
            1: img.LoadFromFile('card-BMPs\s02.bmp');
            2: img.LoadFromFile('card-BMPs\h02.bmp');
            3: img.LoadFromFile('card-BMPs\c02.bmp');
          end;
        end;
        3:begin
          case Hand.Last.GetSuit of
            0: img.LoadFromFile('card-BMPs\d03.bmp');
            1: img.LoadFromFile('card-BMPs\s03.bmp');
            2: img.LoadFromFile('card-BMPs\h03.bmp');
            3: img.LoadFromFile('card-BMPs\c03.bmp');
          end;
        end;
        4:begin
          case Hand.Last.GetSuit of
            0: img.LoadFromFile('card-BMPs\d04.bmp');
            1: img.LoadFromFile('card-BMPs\s04.bmp');
            2: img.LoadFromFile('card-BMPs\h04.bmp');
            3: img.LoadFromFile('card-BMPs\c04.bmp');
          end;
        end;
        5:begin
          case Hand.Last.GetSuit of
            0: img.LoadFromFile('card-BMPs\d05.bmp');
            1: img.LoadFromFile('card-BMPs\s05.bmp');
            2: img.LoadFromFile('card-BMPs\h05.bmp');
            3: img.LoadFromFile('card-BMPs\c05.bmp');
          end;
        end;
        6:begin
          case Hand.Last.GetSuit of
            0: img.LoadFromFile('card-BMPs\d06.bmp');
            1: img.LoadFromFile('card-BMPs\s06.bmp');
            2: img.LoadFromFile('card-BMPs\h06.bmp');
            3: img.LoadFromFile('card-BMPs\c06.bmp');
          end;
        end;
        7:begin
          case Hand.Last.GetSuit of
            0: img.LoadFromFile('card-BMPs\d07.bmp');
            1: img.LoadFromFile('card-BMPs\s07.bmp');
            2: img.LoadFromFile('card-BMPs\h07.bmp');
            3: img.LoadFromFile('card-BMPs\c07.bmp');
          end;
        end;
        8:begin
          case Hand.Last.GetSuit of
            0: img.LoadFromFile('card-BMPs\d08.bmp');
            1: img.LoadFromFile('card-BMPs\s08.bmp');
            2: img.LoadFromFile('card-BMPs\h08.bmp');
            3: img.LoadFromFile('card-BMPs\c08.bmp');
          end;
        end;
        9:begin
          case Hand.Last.GetSuit of
            0: img.LoadFromFile('card-BMPs\d09.bmp');
            1: img.LoadFromFile('card-BMPs\s09.bmp');
            2: img.LoadFromFile('card-BMPs\h09.bmp');
            3: img.LoadFromFile('card-BMPs\c09.bmp');
          end;
        end;
        10:begin
          case Hand.Last.GetSuit of
            0: img.LoadFromFile('card-BMPs\d10.bmp');
            1: img.LoadFromFile('card-BMPs\s10.bmp');
            2: img.LoadFromFile('card-BMPs\h10.bmp');
            3: img.LoadFromFile('card-BMPs\c10.bmp');
          end;
        end;
        11:begin
          case Hand.Last.GetSuit of
            0: img.LoadFromFile('card-BMPs\d11.bmp');
            1: img.LoadFromFile('card-BMPs\s11.bmp');
            2: img.LoadFromFile('card-BMPs\h11.bmp');
            3: img.LoadFromFile('card-BMPs\c11.bmp');
          end;
        end;
        12:begin
          case Hand.Last.GetSuit of
            0: img.LoadFromFile('card-BMPs\d12.bmp');
            1: img.LoadFromFile('card-BMPs\s12.bmp');
            2: img.LoadFromFile('card-BMPs\h12.bmp');
            3: img.LoadFromFile('card-BMPs\c12.bmp');
          end;
        end;
        13:begin
          case Hand.Last.GetSuit of
            0: img.LoadFromFile('card-BMPs\d13.bmp');
            1: img.LoadFromFile('card-BMPs\s13.bmp');
            2: img.LoadFromFile('card-BMPs\h13.bmp');
            3: img.LoadFromFile('card-BMPs\c13.bmp');
          end;
        end;
      end;
    end;
  end;
end;

procedure TClockForm.incrementMoveCounter;
begin
  inc(moves);
  movesEdit.text:='no. of moves: ' + inttostr(moves);
end;

procedure TClockForm.InstructionsButtonClick(Sender: TObject);
begin
  ClockForm.Hide;
  instructionsForm.Show;
  instructionsForm.writeInstructions(1);
end;

procedure TClockForm.MainMenuButtonClick(Sender: TObject);
begin
  ClockForm.Hide;
  openMainMenu;
end;

procedure TClockForm.newGame;
begin
  moves:=0;
  turnOnImages;
  CreateItems;
  turnNextCard(13);
  editAllButtonCaptions;
  movesEdit.Text:='no. of moves: 0';
  ended:=false;
end;

procedure TClockForm.NewGameButtonClick(Sender: TObject);
begin
  if (moves<>52) and (ended=false) then
  begin
    endGame;
  end;
  newGame;
  changeImages(Images);
end;

procedure TClockForm.sayOrientation(card: TCard);
begin
  if card.GetOrientation=face then
    showMessage('Face')
  else
    showMessage('Back');

end;

procedure TClockForm.textToFile(str: string);
begin
  writeToTxtFile(str);
end;

procedure TClockForm.turnAllCardsOver(var hand: TClockHand);
//This procedure is a patch for the extra card turning over bug
var
  i:integer;
begin
  for i := 0 to (hand.Size-1) do
  begin
    if Hand.Cards[i].GetOrientation=face then
    begin
      Hand.Cards[i].FlipCard;
    end;
  end;

end;

procedure TClockForm.turnNextCard(i: integer);
begin
  case i of
    1:begin
        changeImage(CHand1Image,CHand1);
      end;
    2:begin
        changeImage(CHand2Image,CHand2);
      end;
    3:begin
        changeImage(CHand3Image,CHand3);
      end;
    4:begin
        changeImage(CHand4Image,CHand4);
      end;
    5:begin
        changeImage(CHand5Image,CHand5);
      end;
    6:begin
        changeImage(CHand6Image,CHand6);
      end;
    7:begin
        changeImage(CHand7Image,CHand7);
      end;
    8:begin
        changeImage(CHand8Image,CHand8);
      end;
    9:begin
        changeImage(CHand9Image,CHand9);
      end;
    10:begin
        changeImage(CHand10Image,CHand10);
      end;
    11:begin
        changeImage(CHand11Image,CHand11);
      end;
    12:begin
        changeImage(CHand12Image,CHand12);
      end;
    13:begin
        if (CHand13Image.Enabled=true)and(CHand13.Size=1) then
        begin
          CHand13.Last.FlipCard;
          changeImage(CHand13Image,CHand13);
        end
        else if (CHand14Image.Enabled=true)and(CHand14.Size=1) then
        begin
         changeImage(CHand14Image,CHand14);
        end
        else if (CHand15Image.Enabled=true)and(CHand15.Size=1) then
        begin
          changeImage(CHand16Image,CHand15);
        end
        else if (CHand16Image.Enabled=true)and(CHand16.Size=1) then
        begin
          changeImage(CHand16Image,CHand16);
        end
      end;
  end;
end;

procedure TClockForm.turnOffImages;
begin
  CHand1Image.Enabled:=false;
  CHand2Image.Enabled:=false;
  CHand3Image.Enabled:=false;
  CHand4Image.Enabled:=false;
  CHand5Image.Enabled:=false;
  CHand6Image.Enabled:=false;
  CHand7Image.Enabled:=false;
  CHand8Image.Enabled:=false;
  CHand9Image.Enabled:=false;
  CHand10Image.Enabled:=false;
  CHand11Image.Enabled:=false;
  CHand12Image.Enabled:=false;
end;

procedure TClockForm.turnOnImages;
begin
  CHand1Image.Enabled:=true;
  CHand2Image.Enabled:=true;
  CHand3Image.Enabled:=true;
  CHand4Image.Enabled:=true;
  CHand5Image.Enabled:=true;
  CHand6Image.Enabled:=true;
  CHand7Image.Enabled:=true;
  CHand8Image.Enabled:=true;
  CHand9Image.Enabled:=true;
  CHand10Image.Enabled:=true;
  CHand11Image.Enabled:=true;
  CHand12Image.Enabled:=true;
  CHand13Image.Enabled:=true;
  CHand14Image.Enabled:=true;
  CHand15Image.Enabled:=true;
  CHand16Image.Enabled:=true;
end;

end.
