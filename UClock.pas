unit UClock;

interface
  uses sysutils, math, generics.collections,UCards;

  type
    TClockHand = Class(THand)
    private
      HandSize: 0..4;
    protected
      Position: 1..28;
    public
      constructor Create; override;
      function SizeChecker:boolean;
    end;

    TClockGame = class
      private
        Layout:Array[1..28] of TClockHand;
      public
        constructor Create;
        destructor Destroy;
        procedure CreateHands;
        procedure AssignHands;
        procedure MoveCard(var FromHand:TClockHand);
    end;

    var
      CHand1,CHand2,CHand3,CHand4,CHand5,CHand6,CHand7,CHand8,CHand9:TClockHand;
      CHand10,CHand11,CHand12,CHand13,CHand14,CHand15,CHand16:TClockHand;
      CHand17,CHand18,CHand19,CHand20,CHand21,CHand22,CHand23:TClockHand;
      CHand24,CHand25,CHand26,CHand27,CHand28:TClockHand;
      ClockGame:TClockGame;
      Deck:TDeck;

implementation

{ TClockHand }

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
  Deck:=TDeck.Create;
  Deck.Shuffle;
  CreateHands;
  AssignHands;
  for i := 1 to 3 do
  begin
    for j := 1 to 12 do
    begin
      layout[j].AddCard(Deck.DealCard);
    end;
  end;
  for i := 1 to 16 do
  begin
    layout[i].AddCard(Deck.DealCard);
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

procedure TClockGame.MoveCard(var FromHand:TClockHand);
var
  j:integer;
begin
  j:=FromHand.Size;
  case FromHand.Last.GetRank of
    1:begin
        CHand17.AddCard(FromHand.RemoveCard(j));
      end;
    2:;
    3:;
    4:;
    5:;
    6:;
    7:;
    8:;
    9:;
    10:;
    11:;
    12:;
  end;
end;

end.
