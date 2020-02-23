unit UClock;

interface
  uses sysutils, math, generics.collections,UCards,UFileCreater;

  type
    TClockHand = Class(THand)
    private
      HandSize: 0..4;
    protected
      Position: 1..28;
    public
      constructor Create; override;
      procedure AddCard(card:TCard);
      function SizeChecker:boolean;
    end;

    TClockGame = class
      private
        procedure outerHandsCardTurn;
      public
        Layout:Array[1..28] of TClockHand;
        constructor Create;
        destructor Destroy;
        procedure CreateHands;
        procedure AssignHands;
        procedure MoveCard(var FromHand:TClockHand;var GameOver:boolean;var i:integer);
    end;

    var
      CHand1,CHand2,CHand3,CHand4,CHand5,CHand6,CHand7,CHand8,CHand9:TClockHand;
      CHand10,CHand11,CHand12,CHand13,CHand14,CHand15,CHand16:TClockHand;
      CHand17,CHand18,CHand19,CHand20,CHand21,CHand22,CHand23:TClockHand;
      CHand24,CHand25,CHand26,CHand27,CHand28:TClockHand;
      ClockGame:TClockGame;

implementation

{ TClockHand }

procedure TClockHand.AddCard(card:TCard);
begin
  HandSize:=HandSize+1;
  FCards.Add(card);
  {This procedure calls the method of TList to add the card that
   was passed to the procedure}
end;

constructor TClockHand.Create;
begin
  inherited;
  HandSize:=0;
end;

function TClockHand.SizeChecker:boolean;
begin
  result:=(Size<=4)and(Size>=0);
end;

{ TClockGame }

procedure TClockGame.AssignHands;
begin
 Layout[1]:=CHand1;
  Layout[2]:=CHand2;
  Layout[3]:=CHand3;
  Layout[4]:=CHand4;
  Layout[5]:=CHand5;
  Layout[6]:=CHand6;
  Layout[7]:=CHand7;
  Layout[8]:=CHand8;
  Layout[9]:=CHand9;
  Layout[10]:=CHand10;
  Layout[11]:=CHand11;
  Layout[12]:=CHand12;
  Layout[13]:=CHand13;
  Layout[14]:=CHand14;
  Layout[15]:=CHand15;
  Layout[16]:=CHand16;
  Layout[17]:=CHand17;
  Layout[18]:=CHand18;
  Layout[19]:=CHand19;
  Layout[20]:=CHand20;
  Layout[21]:=CHand21;
  Layout[22]:=CHand22;
  Layout[23]:=CHand23;
  Layout[24]:=CHand24;
  Layout[25]:=CHand25;
  Layout[26]:=CHand26;
  Layout[27]:=CHand27;
  Layout[28]:=CHand28;
end;

constructor TClockGame.Create;
var
  i,j: Integer;
begin
  CDeck.Create;
  CDeck.Shuffle;
  CreateHands;
  AssignHands;
  for i := 1 to 3 do
  begin
    for j := 1 to 12 do
    begin
      layout[j].AddCard(CDeck.DealCard);
    end;
  end;
  for i := 1 to 16 do
  begin
    layout[i].AddCard(CDeck.DealCard);
  end;
end;

procedure TClockGame.CreateHands;
begin
  CHand1:=TClockHand.Create;
  CHand2:=TClockHand.Create;
  CHand3:=TClockHand.Create;
  CHand4:=TClockHand.Create;
  CHand5:=TClockHand.Create;
  CHand6:=TClockHand.Create;
  CHand7:=TClockHand.Create;
  CHand8:=TClockHand.Create;
  CHand9:=TClockHand.Create;
  CHand10:=TClockHand.Create;
  CHand11:=TClockHand.Create;
  CHand12:=TClockHand.Create;
  CHand13:=TClockHand.Create;
  CHand14:=TClockHand.Create;
  CHand15:=TClockHand.Create;
  CHand16:=TClockHand.Create;
  CHand17:=TClockHand.Create;
  CHand18:=TClockHand.Create;
  CHand19:=TClockHand.Create;
  CHand20:=TClockHand.Create;
  CHand21:=TClockHand.Create;
  CHand22:=TClockHand.Create;
  CHand23:=TClockHand.Create;
  CHand24:=TClockHand.Create;
  CHand25:=TClockHand.Create;
  CHand26:=TClockHand.Create;
  CHand27:=TClockHand.Create;
  CHand28:=TClockHand.Create;
end;

destructor TClockGame.Destroy;
var
  i:integer;
begin
  for i := 1 to 28 do
    begin
      Layout[i].Destroy;
    end;
end;

procedure TClockGame.MoveCard(var FromHand:TClockHand; var GameOver:boolean; var i:integer);
begin
  GameOver:=False;
  case FromHand.Last.GetRank of
    1:begin
        CHand17.AddCard(FromHand.RemoveLastCard);
        CHand1.Last.FlipCard;
        i:=CHand17.Last.GetRank;
      end;
    2:begin
        CHand18.AddCard(FromHand.RemoveLastCard);
        CHand2.Last.FlipCard;
        i:=CHand18.Last.GetRank;
      end;
    3:begin
        CHand19.AddCard(FromHand.RemoveLastCard);
        CHand3.Last.FlipCard;
        i:=CHand19.Last.GetRank;
      end;
    4:begin
        CHand20.AddCard(FromHand.RemoveLastCard);
        CHand4.Last.FlipCard;
        i:=CHand20.Last.GetRank;
      end;
    5:begin
        CHand21.AddCard(FromHand.RemoveLastCard);
        CHand5.Last.FlipCard;
        i:=CHand21.Last.GetRank;
      end;
    6:begin
        CHand22.AddCard(FromHand.RemoveLastCard);
        CHand6.Last.FlipCard;
        i:=CHand22.Last.GetRank;
      end;
    7:begin
        CHand23.AddCard(FromHand.RemoveLastCard);
        CHand7.Last.FlipCard;
        i:=CHand23.Last.GetRank;
      end;
    8:begin
        CHand24.AddCard(FromHand.RemoveLastCard);
        CHand8.Last.FlipCard;
        i:=CHand24.Last.GetRank;
      end;
    9:begin
        CHand25.AddCard(FromHand.RemoveLastCard);
        CHand9.Last.FlipCard;
        i:=CHand25.Last.GetRank;
      end;
    10:begin
        CHand26.AddCard(FromHand.RemoveLastCard);
        CHand10.Last.FlipCard;
        i:=CHand26.Last.GetRank;
      end;
    11:begin
        CHand27.AddCard(FromHand.RemoveLastCard);
        CHand11.Last.FlipCard;
        i:=CHand27.Last.GetRank;
      end;
    12:begin
        CHand28.AddCard(FromHand.RemoveLastCard);
        CHand12.Last.FlipCard;
        i:=CHand28.Last.GetRank;
      end;
    13:begin
        if CHand13.Size=0 then
        begin
          CHand13.AddCard(FromHand.RemoveLastCard);
          CHand14.Last.FlipCard;
          i:=13;
        end
        else if CHand14.Size=0 then
        begin
          CHand14.AddCard(FromHand.RemoveLastCard);
          CHand15.Last.FlipCard;
          i:=13;
        end
        else if CHand15.Size=0 then
        begin
          CHand15.AddCard(FromHand.RemoveLastCard);
          CHand16.Last.FlipCard;
          i:=13;
        end
        else if CHand16.Size=0 then
        begin
          CHand16.AddCard(FromHand.RemoveLastCard);
          GameOver:=True;
        end;
      end;
  end;
  outerHandsCardTurn;
end;


procedure TClockGame.outerHandsCardTurn;
var
  i: Integer;
begin
  for i := 17 to 28 do
  begin
    if layout[i].Size>0 then
    begin
      if layout[i].Last.GetOrientation=back then
        layout[i].Last.FlipCard;
    end;
  end;
end;

end.
