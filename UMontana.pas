unit UMontana;

interface
uses
  UCards;
type
  TMontanaHand = class(THand)
  protected
    precedingNumber:Integer;
  public
    positionX:integer;
    positionY:integer;
    fixed:boolean;
    function filled:boolean;
    property previousNumber:integer read precedingNumber;
  end;

  TMLayout = array[1..15,1..4] of TMontanaHand;

  TMontanaGame = class
    private
      procedure setCoordinates;
      procedure createHands;
      procedure establishPrecedingNumbers;
    public
      layout:TMLayout;
      fixedCardLayout:array[1..15,1..4] of Integer;
      constructor Create;
      procedure MoveCard(passed:TMontanaHand; var back:integer);
      procedure assignHands;
      procedure deal;
      procedure moveAces;
  end;
var
  MontanaGame:TMontanaGame;
  MHand1,MHand2,MHand3,MHand4,MHand5,MHand6,MHand7,MHand8,MHand9,MHand10,MHand11,MHand12,MHand13,MHand14:TMontanaHand;
  MHand15,MHand16,MHand17,MHand18,MHand19,MHand20,MHand21,MHand22,MHand23,MHand24,MHand25,MHand26,MHand27,MHand28:TMontanaHand;
  MHand29,MHand30,MHand31,MHand32,MHand33,MHand34,MHand35,MHand36,MHand37,MHand38,MHand39,MHand40,MHand41,MHand42:TMontanaHand;
  MHand43,MHand44,MHand45,MHand46,MHand47,MHand48,MHand49,MHand50,MHand51,MHand52,MHand53,MHand54,MHand55,MHand56:TMontanaHand;

implementation
  uses UMontanaForm;

{ TMontanaHand }

function TMontanaHand.filled: boolean;
begin
  if Size=1 then
    result:=true
  else
    result:=false;
end;

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

constructor TMontanaGame.Create;
var
  i: Integer;
  j: Integer;
  temp:TMontanaHand;
  k:integer;
begin
  createHands;
  assignHands;
  deal;
end;

procedure TMontanaGame.createHands;
begin
  MHand1:=TMontanaHand.Create;
  MHand2:=TMontanaHand.Create;
  MHand3:=TMontanaHand.Create;
  MHand4:=TMontanaHand.Create;
  MHand5:=TMontanaHand.Create;
  MHand6:=TMontanaHand.Create;
  MHand7:=TMontanaHand.Create;
  MHand8:=TMontanaHand.Create;
  MHand9:=TMontanaHand.Create;
  MHand10:=TMontanaHand.Create;
  MHand11:=TMontanaHand.Create;
  MHand12:=TMontanaHand.Create;
  MHand13:=TMontanaHand.Create;
  MHand14:=TMontanaHand.Create;
  MHand15:=TMontanaHand.Create;
  MHand16:=TMontanaHand.Create;
  MHand17:=TMontanaHand.Create;
  MHand18:=TMontanaHand.Create;
  MHand19:=TMontanaHand.Create;
  MHand20:=TMontanaHand.Create;
  MHand21:=TMontanaHand.Create;
  MHand22:=TMontanaHand.Create;
  MHand23:=TMontanaHand.Create;
  MHand24:=TMontanaHand.Create;
  MHand25:=TMontanaHand.Create;
  MHand26:=TMontanaHand.Create;
  MHand27:=TMontanaHand.Create;
  MHand28:=TMontanaHand.Create;
  MHand29:=TMontanaHand.Create;
  MHand30:=TMontanaHand.Create;
  MHand31:=TMontanaHand.Create;
  MHand32:=TMontanaHand.Create;
  MHand33:=TMontanaHand.Create;
  MHand34:=TMontanaHand.Create;
  MHand35:=TMontanaHand.Create;
  MHand36:=TMontanaHand.Create;
  MHand37:=TMontanaHand.Create;
  MHand38:=TMontanaHand.Create;
  MHand39:=TMontanaHand.Create;
  MHand40:=TMontanaHand.Create;
  MHand41:=TMontanaHand.Create;
  MHand42:=TMontanaHand.Create;
  MHand43:=TMontanaHand.Create;
  MHand44:=TMontanaHand.Create;
  MHand45:=TMontanaHand.Create;
  MHand46:=TMontanaHand.Create;
  MHand47:=TMontanaHand.Create;
  MHand48:=TMontanaHand.Create;
  MHand49:=TMontanaHand.Create;
  MHand50:=TMontanaHand.Create;
  MHand51:=TMontanaHand.Create;
  MHand52:=TMontanaHand.Create;
  MHand53:=TMontanaHand.Create;
  MHand54:=TMontanaHand.Create;
  MHand55:=TMontanaHand.Create;
  MHand56:=TMontanaHand.Create;
end;

procedure TMontanaGame.deal;
var
  i,j,k:integer;
  temp:TMontanaHand;
begin
  if MontanaForm.redeals<>3 then
  begin
    for i := 1 to 4 do
    begin
      for j := (MontanaForm.fixedCards[i]+2) to 13 do
      begin
        layout[j,i].AddCard(MDeck.DealCard);
        layout[j,i].Last.FlipCard;
      end;
    end;
  end
  else
  begin
    for i := 1 to 4 do
    begin
      for j := (MontanaForm.fixedCards[i]+1) to 13 do
      begin
        layout[j,i].AddCard(MDeck.DealCard);
        layout[j,i].Last.FlipCard;
      end;
    end;
  end;
    moveAces;
    establishPrecedingNumbers;
end;

procedure TMontanaGame.establishPrecedingNumbers;
var
  i: Integer;
  j: Integer;
begin
  for i := 1 to 4 do
  begin
    for j := 1 to 13 do
    begin
      if layout[j,i].Size>0 then
      begin
        Layout[j,i].precedingNumber:=Layout[j,i].Last.GetRank-1;
      end;
    end;
  end;
end;

procedure TMontanaGame.moveAces;
var
  i,j,k:integer;
  temp:TMontanaHand;
begin
    k:=0;
    for i := 1 to 4 do
    begin
      for j := 1 to 13 do
      begin
        if Layout[j,i].Last.GetRank=1 then
        begin
          temp:=Layout[j,i];
          moveCard(temp,k);
        end;
      end;
    end;
end;

procedure TMontanaGame.MoveCard(passed:TMontanaHand; var back:integer);
var
  found:boolean;
  i,j:integer;
begin
  i:=4;
  if passed.Last.GetRank=1 then
  begin
      if Layout[15,4].Size=0 then
      begin
        Layout[15,4].AddCard(passed.RemoveLastCard)
      end
      else if (Layout[15,4].Size=1)and (Layout[15,3].Size=0) then
      begin
        Layout[15,3].AddCard(passed.RemoveLastCard)
      end
      else if (Layout[15,4].Size=1)and (Layout[15,3].Size=1)and (Layout[15,2].Size=0) then
      begin
        Layout[15,2].AddCard(passed.RemoveLastCard);
      end
      else if (Layout[15,4].Size=1)and (Layout[15,3].Size=1)and (Layout[15,2].Size=1)and (Layout[15,1].Size=0) then
      begin
        Layout[15,1].AddCard(passed.RemoveLastCard);
      end;
    end
    else if passed.Last.GetRank=2 then
    begin
    if Layout[1,4].Size=0 then
      begin
        Layout[1,4].AddCard(passed.RemoveLastCard)
      end
      else if (Layout[1,4].Size=1)and (Layout[1,3].Size=0) then
      begin
        Layout[1,3].AddCard(passed.RemoveLastCard)
      end
      else if (Layout[1,4].Size=1)and (Layout[1,3].Size=1)and (Layout[1,2].Size=0) then
      begin
        Layout[1,2].AddCard(passed.RemoveLastCard);
      end
      else if (Layout[1,4].Size=1)and (Layout[1,3].Size=1)and (Layout[1,2].Size=1)and (Layout[1,1].Size=0) then
      begin
        Layout[1,1].AddCard(passed.RemoveLastCard);
      end
      else back:=-1;
    end
    else
    begin
      repeat
	      for j:= 1 to 13 do
	      begin
          if Layout[j,i].Size>0 then
          begin
            if passed.Last.GetSuit=Layout[j,i].Last.GetSuit then
            begin
              if passed.precedingNumber=Layout[j,i].Last.GetRank then
              begin
                found:=true;
                break;
              end;
            end;
          end;
        end;
	      dec(i);
      until (found=true)or(i<1);
      i:=i+1;
      j:=j+1;
      if layout[j,i].filled=true then
      begin
	      back:=-1;
      end
      else
      begin
	      layout[j,i].AddCard(passed.RemoveLastCard);
	      back:=0
      end;

    end;
    for i := 1 to 4 do
    begin
      for j := 1 to 13 do
      begin
        establishPrecedingNumbers;
      end;
    end;
end;

procedure TMontanaGame.setCoordinates;
var
  i: Integer;
  j: Integer;
begin
  for i := 1 to 4 do
  begin
    for j := 1 to 13 do
    begin
      layout[j,i].positionX:=j;
      layout[j,i].positionY:=i;
    end;
    layout[15,i].positionX:=15;
    layout[15,i].positionY:=i;
  end;
end;

end.
