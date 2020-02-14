unit UMontanaForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,UMontana,UCards,
  Vcl.StdCtrls,UInstructions,UMiddleStep;

type
  TMontanaImageArray = array[1..15,1..4] of TImage;
  TMontanaForm = class(TForm)
    MHand1Image: TImage;
    MHand2Image: TImage;
    MHand3Image: TImage;
    MHand4Image: TImage;
    MHand5Image: TImage;
    MHand6Image: TImage;
    MHand7Image: TImage;
    MHand8Image: TImage;
    MHand9Image: TImage;
    MHand10Image: TImage;
    MHand11Image: TImage;
    MHand12Image: TImage;
    MHand13Image: TImage;
    MHand14Image: TImage;
    MHand28Image: TImage;
    MHand15Image: TImage;
    MHand16Image: TImage;
    MHand17Image: TImage;
    MHand18Image: TImage;
    MHand19Image: TImage;
    MHand20Image: TImage;
    MHand21Image: TImage;
    MHand22Image: TImage;
    MHand23Image: TImage;
    MHand24Image: TImage;
    MHand25Image: TImage;
    MHand26Image: TImage;
    MHand27Image: TImage;
    MHand42Image: TImage;
    MHand29Image: TImage;
    MHand30Image: TImage;
    MHand31Image: TImage;
    MHand32Image: TImage;
    MHand33Image: TImage;
    MHand34Image: TImage;
    MHand35Image: TImage;
    MHand36Image: TImage;
    MHand37Image: TImage;
    MHand38Image: TImage;
    MHand39Image: TImage;
    MHand40Image: TImage;
    MHand41Image: TImage;
    MHand56Image: TImage;
    MHand43Image: TImage;
    MHand44Image: TImage;
    MHand45Image: TImage;
    MHand46Image: TImage;
    MHand47Image: TImage;
    MHand48Image: TImage;
    MHand49Image: TImage;
    MHand50Image: TImage;
    MHand51Image: TImage;
    MHand52Image: TImage;
    MHand53Image: TImage;
    MHand54Image: TImage;
    MHand55Image: TImage;
    MainMenuButton: TButton;
    InstructionsButton: TButton;
    NewGameButton: TButton;
    procedure FormCreate(Sender: TObject);
    procedure InstructionsButtonClick(Sender: TObject);
    procedure MainMenuButtonClick(Sender: TObject);
  private
    { Private declarations }
    ImageLayout:TMontanaImageArray;
    procedure handLayout;
    procedure changeImage(img:TImage; Hand:TMontanaHand);
    procedure getImage(Hand:TMontanaHand; var img:TBitmap);
    procedure changeImages(a:TMontanaImageArray);
  public
    { Public declarations }
  end;

var
  MontanaForm: TMontanaForm;

implementation

{$R *.dfm}

{ TForm1 }

procedure TMontanaForm.changeImage(img:TImage; Hand:TMontanaHand);
var
  cardImage:TBitmap;
begin
  cardImage:=TBitmap.Create;
  getImage(Hand,cardImage);
  img.Canvas.StretchDraw(img.ClientRect,cardImage);
end;

procedure TMontanaForm.changeImages(a: TMontanaImageArray);
var
  i: Integer;
  j: Integer;
begin
  for i := 1 to 4 do
  begin
    for j := 1 to 13 do
    begin
      changeImage(a[j,i],MontanaGame.layout[j,i]);
    end;
    changeImage(a[15,i],MontanaGame.layout[15,i]);
  end;

end;

procedure TMontanaForm.FormCreate(Sender: TObject);
begin
  MontanaGame:=TMontanaGame.Create;
  handLayout;
  changeImages(ImageLayout);
end;

procedure TMontanaForm.getImage(Hand:TMontanaHand; var img:Tbitmap);
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

procedure TMontanaForm.handLayout;
begin
  ImageLayout[1,4]:=MHand1Image;
  ImageLayout[2,4]:=MHand2Image;
  ImageLayout[3,4]:=MHand3Image;
  ImageLayout[4,4]:=MHand4Image;
  ImageLayout[5,4]:=MHand5Image;
  ImageLayout[6,4]:=MHand6Image;
  ImageLayout[7,4]:=MHand7Image;
  ImageLayout[8,4]:=MHand8Image;
  ImageLayout[9,4]:=MHand9Image;
  ImageLayout[10,4]:=MHand10Image;
  ImageLayout[11,4]:=MHand11Image;
  ImageLayout[12,4]:=MHand12Image;
  ImageLayout[13,4]:=MHand13Image;
  ImageLayout[15,4]:=MHand14Image;
  ImageLayout[1,3]:=MHand15Image;
  ImageLayout[2,3]:=MHand16Image;
  ImageLayout[3,3]:=MHand17Image;
  ImageLayout[4,3]:=MHand18Image;
  ImageLayout[5,3]:=MHand19Image;
  ImageLayout[6,3]:=MHand20Image;
  ImageLayout[7,3]:=MHand21Image;
  ImageLayout[8,3]:=MHand22Image;
  ImageLayout[9,3]:=MHand23Image;
  ImageLayout[10,3]:=MHand24Image;
  ImageLayout[11,3]:=MHand25Image;
  ImageLayout[12,3]:=MHand26Image;
  ImageLayout[13,3]:=MHand27Image;
  ImageLayout[15,3]:=MHand28Image;
  ImageLayout[1,2]:=MHand29Image;
  ImageLayout[2,2]:=MHand30Image;
  ImageLayout[3,2]:=MHand31Image;
  ImageLayout[4,2]:=MHand32Image;
  ImageLayout[5,2]:=MHand33Image;
  ImageLayout[6,2]:=MHand34Image;
  ImageLayout[7,2]:=MHand35Image;
  ImageLayout[8,2]:=MHand36Image;
  ImageLayout[9,2]:=MHand37Image;
  ImageLayout[10,2]:=MHand38Image;
  ImageLayout[11,2]:=MHand39Image;
  ImageLayout[12,2]:=MHand40Image;
  ImageLayout[13,2]:=MHand41Image;
  ImageLayout[15,2]:=MHand42Image;
  ImageLayout[1,1]:=MHand43Image;
  ImageLayout[2,1]:=MHand44Image;
  ImageLayout[3,1]:=MHand45Image;
  ImageLayout[4,1]:=MHand46Image;
  ImageLayout[5,1]:=MHand47Image;
  ImageLayout[6,1]:=MHand48Image;
  ImageLayout[7,1]:=MHand49Image;
  ImageLayout[8,1]:=MHand50Image;
  ImageLayout[9,1]:=MHand51Image;
  ImageLayout[10,1]:=MHand52Image;
  ImageLayout[11,1]:=MHand53Image;
  ImageLayout[12,1]:=MHand54Image;
  ImageLayout[13,1]:=MHand55Image;
  ImageLayout[15,1]:=MHand56Image;
end;


procedure TMontanaForm.InstructionsButtonClick(Sender: TObject);
begin
  MontanaForm.Hide;
  instructionsForm.Show;
  instructionsForm.writeInstructions(2);
end;

procedure TMontanaForm.MainMenuButtonClick(Sender: TObject);
begin
  MontanaForm.Hide;
  openMainMenu;
end;

end.
