unit UClockForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, UClock, UCards
  ,UFileCreater,UMiddleStep, UInstructions;
 {This is a list of all of the units that this unit requires on creation}

type
  ImageArray28 = array[1..28] of TImage;
  {This is a data type that multiple instances are needed, meaning it is easier
   to define it as its own data type rather than declaring it separately each time.
   As well as this it isn't possible to pass an array with a defined number of
   rows into a procedure or function and it the some of the functions require
   an instance of this array to be passed to it}
  TClockForm = class(TForm)
    MovesEdit: TEdit;
    {This is an edit to inform the user of how many moves they have done}
    NewGameButton: TButton;
    {This is a button, which will allow the user to start a new game when
     clicked}
    MainMenuButton: TButton;
    {This is a button, which will allow the user to go back to the main menu}
    InstructionsButton: TButton;
    {This is a button that will send the user to the instructions screen}
    CHand1Image: TImage;
    {This is an image that corresponds to CHand1, the inner hand that is turned
     over when aces are moved}
    CHand2Image: TImage;
    {This is an image that corresponds to CHand2, the inner hand that is turned
     over when twos are moved}
    CHand13Image: TImage;
    {This is an image that corresponds to CHand13, the top left hand card in
     the centre of the layout and is the first card to be moved and where the
     first king is moved to}
    CHand14Image: TImage;
    {This is an image that corresponds to CHand14, the top right hand card in
     the centre of the layout and is the card to turn over when the first king
     is moved and is where the second king is moved to}
    CHand3Image: TImage;
    {This is an image that corresponds to CHand3, the inner hand that is turned
     over when threes are moved}
    CHand4Image: TImage;
    {This is an image that corresponds to CHand4, the inner hand that is turned
     over when fours are moved}
    CHand5Image: TImage;
    {This is an image that corresponds to CHand5, the inner hand that is turned
     over when fives are moved}
    CHand6Image: TImage;
    {This is an image that corresponds to CHand6, the inner hand that is turned
     over when sixes are moved}
    CHand7Image: TImage;
    {This is an image that corresponds to CHand7, the inner hand that is turned
     over when sevens are moved}
    CHand8Image: TImage;
    {This is an image that corresponds to CHand8, the inner hand that is turned
     over when eights are moved}
    CHand9Image: TImage;
    {This is an image that corresponds to CHand9, the inner hand that is turned
     over when nines are moved}
    CHand10Image: TImage;
    {This is an image that corresponds to CHand10, the inner hand that is
     turned over when tens are moved}
    CHand11Image: TImage;
    {This is an image that corresponds to CHand11, the inner hand that is
     turned over when jacks are moved}
    CHand12Image: TImage;
    {This is an image that corresponds to CHand12, the inner hand that is
     turned over when queens are moved}
    CHand15Image: TImage;
    {This is an image that corresponds to CHand15, the bottom left hand in the
     centre of the layout and is the card to be turned over when the second king
     is moved and it is where the third king is moved to}
    CHand16Image: TImage;
    {This is an image that corresponds to CHand16, the bottom right hand in the
     centre of the layout and is the card to be turned over when the third king
     is moved and it is where the final king is moved to, causing the game to
     end}
    CHand28Image: TImage;
    {This is an image that corresponds to CHand28, the outer hand that the
     queens that are moved to}
    CHand17Image: TImage;
    {This is an image that corresponds to CHand17, the outer hand that the aces
     are moved to}
    CHand18Image: TImage;
    {This is an image that corresponds to CHand18, the outer hand that the twos
     are moved to}
    CHand19Image: TImage;
    {This is an image that corresponds to CHand19, the outer hand that the
     threes are moved to}
    CHand20Image: TImage;
    {This is an image that corresponds to CHand20, the outer hand that the
     fours are moved to}
    CHand21Image: TImage;
    {This is an image that corresponds to CHand21, the outer hand that the
     fives are moved to}
    CHand22Image: TImage;
    {This is an image that corresponds to CHand22, the outer hand that the
     sixes are moved to}
    CHand23Image: TImage;
    {This is an image that corresponds to CHand23, the outer hand that the
     sevens are moved to}
    CHand24Image: TImage;
    {This is an image that corresponds to CHand24, the outer hand that the
     eights are moved to}
    CHand25Image: TImage;
    {This is an image that corresponds to CHand25, the outer hand that the
     nines are moved to}
    CHand26Image: TImage;
    {This is an image that corresponds to CHand26, the outer hand that the
     tens are moved to}
    CHand27Image: TImage;
    {This is an image that corresponds to CHand27, the outer hand that the
     jacks are moved to}
    SolubilityEdit: TEdit;
    {This is the edit that will have the text it contains change to inform the
     user whether or not a deal is soluble}
    procedure FormCreate(Sender: TObject);
    {This is the procedure that is called when the form is created}
    {The next 3 procedures are procedures that happen when one of the three
     buttons on the form is clicked}
    procedure NewGameButtonClick(Sender: TObject);
    procedure MainMenuButtonClick(Sender: TObject);
    procedure InstructionsButtonClick(Sender: TObject);
    {The next 16 procedures are called when the moveable cards are clicked on}
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    {This procedure is called when the form is closed}
  private
    { Private declarations }
    moves:integer;
    {This is an integer to count the number of moves the user has made}
    ended:boolean;
    {This is a boolean to see if a game of Clock should be finished}
    Images:ImageArray28;
    {This is an a array of the custom data type ImageArray28 and is when
     the images are needed to be changed}
    procedure CreateItems(var str:string);
    {This procedure calls the TClockGame.Create method for the game that is
     currently being played}
    procedure sayOrientation(card:TCard);
    {This is a procedure is now defunct but was used while debugging a
     particular error it would show a message box with the orientation of the
     card that is now at the top of the pile that has just had a card moved
     from}
    procedure turnAllCardsOver(var hand:TClockHand);
    {This procedure is to fix a bug in which there will occasionally be a card
     that is revealed with it's face being shown rather than the back of it,
     like it should be}
    procedure assignImagestoArray;
    {This procedure assigns the 28 rows in the Image array to being the
     CHandImage which has the same CHand number as the row and then changes the
     images of these hands}
    procedure getImage(Hand:TClockHand; var img:TBitmap);
    {This procedure finds the relevant bitmap from a folder in the debug that
     is required by the last card in the hand that has been passed to it. The
     procedure returns the bitmap}
  public
    { Public declarations }
    procedure turnOffImages;
    {This procedure disables all of the images, preventing the user from
     clicking on one and altering the state of the game}
    procedure turnOnImages;
    {This procedure enables all of the images that can be clickable, meaning
     that multiple games can be played}
    procedure newGame;
    {This procedure holds all of the required code for creating and running a
     new game}
    procedure turnNextCard(i:integer);
    {This procedure turns the card in the inner hand to the card that has had a
     card moved into its outer hand}
    procedure editMiddleButtonCaptions(i:integer);
    {This is a specialised procedure to only change the middle images. The name
     is left over from when buttons were used instead of images}
    procedure incrementMoveCounter;
    {This procedure increases the value of moves by 1}
    procedure textToFile(str:string);
    {This procedure is now defunct, but it was used to write the values of the
     hand that had just been clicked to a file to check to see if there were
     cards without rank or suit}
    procedure EndGame;
    {This procedure holds all of the code required to end a game of clock}
    procedure changeImage(i:TImage; Hand:TClockHand);
    {This procedure changes the particular image passed to it with regards to
     the hand that is passed to it}
    procedure changeImages(a:ImageArray28);
    {This procedure calls changeImage after being passed an ImageArray28}
  end;

var
  ClockForm: TClockForm;

implementation

{$R *.dfm}

procedure TClockForm.assignImagestoArray;
begin
  {The next 28 lines set the rows of Images to the relative CHand image}
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
  Images[17]:=CHand17Image;
  Images[18]:=CHand18Image;
  Images[19]:=CHand19Image;
  Images[20]:=CHand20Image;
  Images[21]:=CHand21Image;
  Images[22]:=CHand22Image;
  Images[23]:=CHand23Image;
  Images[24]:=CHand24Image;
  Images[25]:=CHand25Image;
  Images[26]:=CHand26Image;
  Images[27]:=CHand27Image;
  Images[28]:=CHand28Image;
  changeImages(Images);
  {This line calls the ChangeImages procedure and passes it the array Images}
end;

procedure TClockForm.CHand10ImageClick(Sender: TObject);
var
  j:boolean;
  i:integer;
begin
  if CHand10.Last.GetOrientation=face then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand10,j,i,ClockGame.layout,'human');
    if CHand10.Size=0 then
    begin
      CHand10Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>10 then
    begin
      turnAllCardsOver(CHand10);
    end;
    changeImages(Images);
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
    ClockGame.MoveCard(CHand11,j,i,ClockGame.layout,'human');
    if CHand11.Size=0 then
    begin
      CHand11Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>11 then
    begin
      turnAllCardsOver(CHand11);
    end;
    changeImages(Images);
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
    ClockGame.MoveCard(CHand12,j,i,ClockGame.layout,'human');
    if CHand12.Size=0 then
    begin
      CHand12Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>12 then
    begin
      turnAllCardsOver(CHand12);
    end;
    changeImages(Images);
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
    ClockGame.MoveCard(CHand13,j,i,ClockGame.layout,'human');
    turnNextCard(i);
    CHand13Image.Enabled:=False;
    //CHand14Image.Enabled:=True;
    changeImages(Images);
    editMiddleButtonCaptions(i);
  end;
end;

procedure TClockForm.CHand14ImageClick(Sender: TObject);
var
  i:integer;
  j:boolean;
begin
  if CHand14Image.Enabled=false then
  begin
    CHand14Image.Enabled:=True;
  end;
  if (CHand13.Size=1)and(CHand13Image.Enabled=false) then
  begin
    incrementMoveCounter;
    ClockGame.MoveCard(CHand14,j,i,ClockGame.layout,'human');
    turnNextCard(i);
    CHand14Image.Enabled:=False;
    changeImages(Images);
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
    ClockGame.MoveCard(CHand15,j,i,ClockGame.layout,'human');
    turnNextCard(i);
    CHand15Image.Enabled:=False;
    changeImages(Images);
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
    ClockGame.MoveCard(CHand16,j,i,ClockGame.layout,'human');
    turnNextCard(i);
    CHand16Image.Enabled:=False;
    changeImages(Images);
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
    ClockGame.MoveCard(CHand1,j,i,ClockGame.layout,'human');
    if CHand1.Size=0 then
    begin
      CHand1Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>1 then
    begin
      turnAllCardsOver(CHand1);
    end;
    changeImages(Images);
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
    ClockGame.MoveCard(CHand2,j,i,ClockGame.layout,'human');
    if CHand2.Size=0 then
    begin
      CHand2Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>2 then
    begin
      turnAllCardsOver(CHand2);
    end;
    changeImages(Images);
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
    ClockGame.MoveCard(CHand3,j,i,ClockGame.layout,'human');
    if CHand3.Size=0 then
    begin
      CHand3Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>3 then
    begin
      turnAllCardsOver(CHand3);
    end;
    changeImages(Images);
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
    ClockGame.MoveCard(CHand4,j,i,ClockGame.layout,'human');
    if CHand4.Size=0 then
    begin
      CHand4Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>4 then
    begin
      turnAllCardsOver(CHand4);
    end;
    changeImages(Images);
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
    ClockGame.MoveCard(CHand5,j,i,ClockGame.layout,'human');
    if CHand5.Size=0 then
    begin
      CHand5Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>5 then
    begin
      turnAllCardsOver(CHand5);
    end;
    changeImages(Images);
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
    ClockGame.MoveCard(CHand6,j,i,ClockGame.layout,'human');
    if CHand6.Size=0 then
    begin
      CHand6Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>6 then
    begin
      turnAllCardsOver(CHand6);
    end;
    changeImages(Images);
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
    ClockGame.MoveCard(CHand7,j,i,ClockGame.layout,'human');
    if CHand7.Size=0 then
    begin
      CHand7Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>7 then
    begin
      turnAllCardsOver(CHand7);
    end;
    changeImages(Images);
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
    ClockGame.MoveCard(CHand8,j,i,ClockGame.layout,'human');
    if CHand8.Size=0 then
    begin
      CHand8Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>8 then
    begin
      turnAllCardsOver(CHand8);
    end;
    changeImages(Images);
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
    ClockGame.MoveCard(CHand9,j,i,ClockGame.layout,'human');
    if CHand9.Size=0 then
    begin
      CHand9Image.Enabled:=False;
    end;
    turnNextCard(i);
    if i<>9 then
    begin
      turnAllCardsOver(CHand9);
    end;
   changeImages(Images);
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
  changeImage(a[17],CHand17);
  changeImage(a[18],CHand18);
  changeImage(a[19],CHand19);
  changeImage(a[20],CHand20);
  changeImage(a[21],CHand21);
  changeImage(a[22],CHand22);
  changeImage(a[23],CHand23);
  changeImage(a[24],CHand24);
  changeImage(a[25],CHand25);
  changeImage(a[26],CHand26);
  changeImage(a[27],CHand27);
  changeImage(a[28],CHand28);
end;

procedure TClockForm.CreateItems(var str:string);
begin
  ClockGame:=TClockGame.Create(str);
end;

procedure TClockForm.editMiddleButtonCaptions(i: integer);
begin
  ChangeImage(CHand13Image,CHand13);
  ChangeImage(CHand14Image,CHand14);
  ChangeImage(CHand15Image,CHand15);
  ChangeImage(CHand16Image,CHand16);
end;

procedure TClockForm.EndGame;
const
  maxMoves=52;
var
  percent:double;
begin
  if Moves=52 then
  begin
    showMessage('Congratulations you solved the deal');
  end
  else if moves=0 then
  begin
  end
  else
  begin
    percent:=((moves/maxMoves)*100);
    percent:=round(percent);
    showMessage('Game Over. You completed '+FloatToStr(percent)+'% of the game');
  end;
  turnOffImages;
  ClockGame.Destroy;
end;

procedure TClockForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  openMainMenu;
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
var
  str:string;
begin
  moves:=0;
  turnOnImages;
  CreateItems(str);
  turnNextCard(13);
  if str='true' then
  begin
    SolubilityEdit.Text:='soluble';
  end
  else
  begin
    SolubilityEdit.Text:='insoluble';
  end;
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
      end;
    14:begin
        if (CHand14Image.Enabled=true)and(CHand14.Size=1) then
        begin
         changeImage(CHand14Image,CHand14);
        end
      end;
    15:begin
        if (CHand15Image.Enabled=true)and(CHand15.Size=1) then
        begin
          changeImage(CHand16Image,CHand15);
        end
      end;
    16:begin
        if (CHand16Image.Enabled=true)and(CHand16.Size=1) then
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
