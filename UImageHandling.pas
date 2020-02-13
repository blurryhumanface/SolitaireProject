unit UImageHandling;

interface
    uses
       Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
       Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,UClock,UMontana,UCards;

    procedure getImage(PositionX,positionY:integer; var img:TBitmap);
    procedure changeImage(i: TImage; Handtype,positionX,positionY:integer);
    procedure changeImages(a:array of TImage;handtype:integer);
    var
      typeOfHand:integer;
implementation

procedure changeImage(i: TImage; Handtype,positionX,positionY:integer);
var
  cardImage:TBitmap;
begin
  typeOfHand:=handType;
  cardImage:=TBitmap.Create;
  getImage(positionX,positionY,cardImage);
  i.Canvas.StretchDraw(i.ClientRect,cardImage);
end;

procedure changeImages(a: array of TImage;Handtype:integer);
begin
  typeofHand:=Handtype;
  case typeOfHand of
    0:begin
      changeImage(a[1],Handtype,1,0);
      changeImage(a[2],Handtype,2,0);
      changeImage(a[3],Handtype,3,0);
      changeImage(a[4],Handtype,4,0);
      changeImage(a[5],Handtype,5,0);
      changeImage(a[6],Handtype,6,0);
      changeImage(a[7],Handtype,7,0);
      changeImage(a[8],Handtype,8,0);
      changeImage(a[9],Handtype,9,0);
      changeImage(a[10],Handtype,10,0);
      changeImage(a[11],Handtype,11,0);
      changeImage(a[12],Handtype,12,0);
      changeImage(a[13],Handtype,13,0);
      changeImage(a[14],Handtype,14,0);
      changeImage(a[15],Handtype,15,0);
      changeImage(a[16],Handtype,16,0);
      changeImage(a[17],Handtype,17,0);
      changeImage(a[18],Handtype,18,0);
      changeImage(a[19],Handtype,19,0);
      changeImage(a[20],Handtype,20,0);
      changeImage(a[21],Handtype,21,0);
      changeImage(a[22],Handtype,22,0);
      changeImage(a[23],Handtype,23,0);
      changeImage(a[24],Handtype,24,0);
      changeImage(a[25],Handtype,25,0);
      changeImage(a[26],Handtype,26,0);
      changeImage(a[27],Handtype,27,0);
      changeImage(a[28],Handtype,28,0);
    end;
  end;
end;

procedure getImage(positionX,positionY:integer; var img: TBitmap);
var
  CHand:TClockHand;
  MHand:TMontanaHand;
begin
  case typeOfHand of
  0: begin
      CHand:=ClockGame.Layout[positionX];
      if CHand.Size=0 then
      begin
        img.LoadFromFile('card-BMPs\blank.bmp');
      end
      else if CHand.Size>0 then
      begin
        if CHand.Last.GetOrientation=back then
        begin
          img.LoadFromFile('card-BMPs\b1fv.bmp');
        end
        else
        if CHand.Last.GetOrientation=face then
        begin
          case CHand.Last.GetRank of
            1:begin
              case CHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d01.bmp');
                1: img.LoadFromFile('card-BMPs\s01.bmp');
                2: img.LoadFromFile('card-BMPs\h01.bmp');
                3: img.LoadFromFile('card-BMPs\c01.bmp');
              end;
            end;
            2:begin
              case CHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d02.bmp');
                1: img.LoadFromFile('card-BMPs\s02.bmp');
                2: img.LoadFromFile('card-BMPs\h02.bmp');
                3: img.LoadFromFile('card-BMPs\c02.bmp');
              end;
            end;
            3:begin
              case CHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d03.bmp');
                1: img.LoadFromFile('card-BMPs\s03.bmp');
                2: img.LoadFromFile('card-BMPs\h03.bmp');
                3: img.LoadFromFile('card-BMPs\c03.bmp');
              end;
            end;
            4:begin
              case CHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d04.bmp');
                1: img.LoadFromFile('card-BMPs\s04.bmp');
                2: img.LoadFromFile('card-BMPs\h04.bmp');
                3: img.LoadFromFile('card-BMPs\c04.bmp');
              end;
            end;
            5:begin
              case CHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d05.bmp');
                1: img.LoadFromFile('card-BMPs\s05.bmp');
                2: img.LoadFromFile('card-BMPs\h05.bmp');
                3: img.LoadFromFile('card-BMPs\c05.bmp');
              end;
            end;
            6:begin
              case CHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d06.bmp');
                1: img.LoadFromFile('card-BMPs\s06.bmp');
                2: img.LoadFromFile('card-BMPs\h06.bmp');
                3: img.LoadFromFile('card-BMPs\c06.bmp');
              end;
            end;
            7:begin
              case CHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d07.bmp');
                1: img.LoadFromFile('card-BMPs\s07.bmp');
                2: img.LoadFromFile('card-BMPs\h07.bmp');
                3: img.LoadFromFile('card-BMPs\c07.bmp');
              end;
            end;
            8:begin
              case CHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d08.bmp');
                1: img.LoadFromFile('card-BMPs\s08.bmp');
                2: img.LoadFromFile('card-BMPs\h08.bmp');
                3: img.LoadFromFile('card-BMPs\c08.bmp');
              end;
            end;
            9:begin
              case CHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d09.bmp');
                1: img.LoadFromFile('card-BMPs\s09.bmp');
                2: img.LoadFromFile('card-BMPs\h09.bmp');
                3: img.LoadFromFile('card-BMPs\c09.bmp');
              end;
            end;
            10:begin
              case CHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d10.bmp');
                1: img.LoadFromFile('card-BMPs\s10.bmp');
                2: img.LoadFromFile('card-BMPs\h10.bmp');
                3: img.LoadFromFile('card-BMPs\c10.bmp');
              end;
            end;
            11:begin
              case CHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d11.bmp');
                1: img.LoadFromFile('card-BMPs\s11.bmp');
                2: img.LoadFromFile('card-BMPs\h11.bmp');
                3: img.LoadFromFile('card-BMPs\c11.bmp');
              end;
            end;
            12:begin
              case CHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d12.bmp');
                1: img.LoadFromFile('card-BMPs\s12.bmp');
                2: img.LoadFromFile('card-BMPs\h12.bmp');
                3: img.LoadFromFile('card-BMPs\c12.bmp');
              end;
            end;
            13:begin
              case CHand.Last.GetSuit of
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
    1:begin
      MHand:=MontanaGame.Layout[positionX,positionY];
      if MHand.Size=0 then
      begin
        img.LoadFromFile('card-BMPs\blank.bmp');
      end
      else if CHand.Size>0 then
      begin
        if MHand.Last.GetOrientation=back then
        begin
          img.LoadFromFile('card-BMPs\b1fv.bmp');
        end
        else
        if MHand.Last.GetOrientation=face then
        begin
          case MHand.Last.GetRank of
            1:begin
              case MHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d01.bmp');
                1: img.LoadFromFile('card-BMPs\s01.bmp');
                2: img.LoadFromFile('card-BMPs\h01.bmp');
                3: img.LoadFromFile('card-BMPs\c01.bmp');
              end;
            end;
            2:begin
              case MHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d02.bmp');
                1: img.LoadFromFile('card-BMPs\s02.bmp');
                2: img.LoadFromFile('card-BMPs\h02.bmp');
                3: img.LoadFromFile('card-BMPs\c02.bmp');
              end;
            end;
            3:begin
              case MHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d03.bmp');
                1: img.LoadFromFile('card-BMPs\s03.bmp');
                2: img.LoadFromFile('card-BMPs\h03.bmp');
                3: img.LoadFromFile('card-BMPs\c03.bmp');
              end;
            end;
            4:begin
              case MHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d04.bmp');
                1: img.LoadFromFile('card-BMPs\s04.bmp');
                2: img.LoadFromFile('card-BMPs\h04.bmp');
                3: img.LoadFromFile('card-BMPs\c04.bmp');
              end;
            end;
            5:begin
              case MHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d05.bmp');
                1: img.LoadFromFile('card-BMPs\s05.bmp');
                2: img.LoadFromFile('card-BMPs\h05.bmp');
                3: img.LoadFromFile('card-BMPs\c05.bmp');
              end;
            end;
            6:begin
              case MHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d06.bmp');
                1: img.LoadFromFile('card-BMPs\s06.bmp');
                2: img.LoadFromFile('card-BMPs\h06.bmp');
                3: img.LoadFromFile('card-BMPs\c06.bmp');
              end;
            end;
            7:begin
              case MHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d07.bmp');
                1: img.LoadFromFile('card-BMPs\s07.bmp');
                2: img.LoadFromFile('card-BMPs\h07.bmp');
                3: img.LoadFromFile('card-BMPs\c07.bmp');
              end;
            end;
            8:begin
              case MHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d08.bmp');
                1: img.LoadFromFile('card-BMPs\s08.bmp');
                2: img.LoadFromFile('card-BMPs\h08.bmp');
                3: img.LoadFromFile('card-BMPs\c08.bmp');
              end;
            end;
            9:begin
              case MHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d09.bmp');
                1: img.LoadFromFile('card-BMPs\s09.bmp');
                2: img.LoadFromFile('card-BMPs\h09.bmp');
                3: img.LoadFromFile('card-BMPs\c09.bmp');
              end;
            end;
            10:begin
              case MHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d10.bmp');
                1: img.LoadFromFile('card-BMPs\s10.bmp');
                2: img.LoadFromFile('card-BMPs\h10.bmp');
                3: img.LoadFromFile('card-BMPs\c10.bmp');
              end;
            end;
            11:begin
              case MHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d11.bmp');
                1: img.LoadFromFile('card-BMPs\s11.bmp');
                2: img.LoadFromFile('card-BMPs\h11.bmp');
                3: img.LoadFromFile('card-BMPs\c11.bmp');
              end;
            end;
            12:begin
              case MHand.Last.GetSuit of
                0: img.LoadFromFile('card-BMPs\d12.bmp');
                1: img.LoadFromFile('card-BMPs\s12.bmp');
                2: img.LoadFromFile('card-BMPs\h12.bmp');
                3: img.LoadFromFile('card-BMPs\c12.bmp');
              end;
            end;
            13:begin
              case MHand.Last.GetSuit of
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
  end;
end;
end.
