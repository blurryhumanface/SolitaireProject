unit UMontana;

interface
uses
  UCards;
type
  TMontanaHand = class(THand)
  public
    positionX:integer;
    positionY:integer;
  end;

  TMontanaGame = class
    private
    public
      layout:array[1..15,1..4] of TMontanaHand;
      procedure MoveCard;
      procedure assignHands;
  end;
var
  MontanaGame:TMontanaGame;
  MHand1,MHand2,MHand3,MHand4,MHand5,MHand6,MHand7,MHand8,MHand9,MHand10,MHand11,MHand12,MHand13,MHand14:TMontanaHand;
  MHand15,MHand16,MHand17,MHand18,MHand19,MHand20,MHand21,MHand22,MHand23,MHand24,MHand25,MHand26,MHand27,MHand28:TMontanaHand;
  MHand29,MHand30,MHand31,MHand32,MHand33,MHand34,MHand35,MHand36,MHand37,MHand38,MHand39,MHand40,MHand41,MHand42:TMontanaHand;
  MHand43,MHand44,MHand45,MHand46,MHand47,MHand48,MHand49,MHand50,MHand51,MHand52,MHand53,MHand54,MHand55,MHand56:TMontanaHand;

implementation

{ TMontanaHand }

{ TMontanaGame }

procedure TMontanaGame.assignHands;
begin
  Layout[1,4]:=MHand1;
  Layout[2,4]:=MHand2;
  Layout[3,4]:=MHand3;
  Layout[4,4]:=MHand4;
  Layout[5,4]:=MHand5;
  Layout[6,4]:=MHand6;
  Layout[7,4]:=MHand7;
  Layout[8,4]:=MHand8;
  Layout[9,4]:=MHand9;
  Layout[10,4]:=MHand10;
  Layout[11,4]:=MHand11;
  Layout[12,4]:=MHand12;
  Layout[13,4]:=MHand13;
  Layout[15,4]:=MHand14;
  Layout[1,3]:=MHand15;
  Layout[2,3]:=MHand16;
  Layout[3,3]:=MHand17;
  Layout[4,3]:=MHand18;
  Layout[5,3]:=MHand19;
  Layout[6,3]:=MHand20;
  Layout[7,3]:=MHand21;
  Layout[8,3]:=MHand22;
  Layout[9,3]:=MHand23;
  Layout[10,3]:=MHand24;
  Layout[11,3]:=MHand25;
  Layout[12,3]:=MHand26;
  Layout[13,3]:=MHand27;
  Layout[15,3]:=MHand28;
  Layout[1,2]:=MHand29;
  Layout[2,2]:=MHand30;
  Layout[3,2]:=MHand31;
  Layout[4,2]:=MHand32;
  Layout[5,2]:=MHand33;
  Layout[6,2]:=MHand34;
  Layout[7,2]:=MHand35;
  Layout[8,2]:=MHand36;
  Layout[9,2]:=MHand37;
  Layout[10,2]:=MHand38;
  Layout[11,2]:=MHand39;
  Layout[12,2]:=MHand40;
  Layout[13,2]:=MHand41;
  Layout[15,2]:=MHand42;
  Layout[1,1]:=MHand43;
  Layout[2,1]:=MHand44;
  Layout[3,1]:=MHand45;
  Layout[4,1]:=MHand46;
  Layout[5,1]:=MHand47;
  Layout[6,1]:=MHand48;
  Layout[7,1]:=MHand49;
  Layout[8,1]:=MHand50;
  Layout[9,1]:=MHand51;
  Layout[10,1]:=MHand52;
  Layout[11,1]:=MHand53;
  Layout[12,1]:=MHand54;
  Layout[13,1]:=MHand55;
  Layout[15,1]:=MHand56;
end;

procedure TMontanaGame.MoveCard;
begin

end;

end.
