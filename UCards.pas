unit UCards;

interface
  uses sysutils, math, Generics.Collections;
  type
    TOrientation = (face,back);
    {I created a data type specifically to denote the orientation of the cards
    because I know that the orientation is important in both Clock Solitaire and
    Klondike Solitaire}
    TCard=class
      private
        rank: 1..13; //The rank is the value on the card's face
        //there are 13 ranks from Ace to King
        suit: 1..4; //In a deck of cards there are 4 suits:
        {Hearts, Diamonds, Spades and Clubs}
        orientation: TOrientation;
        {This is the actual property in the card class that relates to whether
        the card is face up or if the back of the card is facing the player}
      public
        constructor Create(r,s:integer);
        {This procedure creates the instance of the card after being given the
        values for the rank and suit}
        procedure FlipCard;
        {This procedure changes the state of the orientation property of the
        card}
        function GetRank:integer;
        {This function returns the numerical value of the rank of the card}
        function GetSuit:integer;
        {This function returns the numerical value of the suit}
        function GetRankAsString:string;
        {This function returns the rank of the card as a string with Ace,
        Jack, Queen and Kings being named here}
        function GetSuitAsString:String;
        {This function returns the suit of the card as a string with the suit
        names}
        function GetName:string;
        {This function returns a string with the 'rank as a string' of 'suit as
        a string'}
        function GetOrientation:TOrientation;
        {This function returns the current orientation of the card}
    end;
    TCards = Array[0..51] of TCard;
    //This is a collection of cards the size of a regular deck of cards
    TDeck = Class
      Private
        FCards, FQueue:TCards;
        FFront, FRear, FSize: Integer;
      Public
        constructor Create;
        destructor Destroy;
        procedure Shuffle;
        procedure AddCard(card:TCard);
        function DealCard:TCard;
        function IsEmpty:boolean;
        function IsFull:boolean;
        property Top :integer read FFront write FFront;
        property Bottom :integer read FRear write FRear;
        property Size :integer read FSize write FSize;
    End;
    THand = class abstract
      protected
        FCards:TList<TCard>;
        function GetCard(i: integer): TCard;
        function GetSize:integer;
      public
        constructor Create; virtual;
        destructor Destroy; override;
        procedure AddCard(card:TCard);
        procedure Clear;
        function RemoveCard(i:integer):TCard;
        function RemoveFirstCard:TCard;
        function First:TCard;
        function Last:TCard;
        function IsEmpty:boolean;
        property Size: integer read GetSize;
        property Cards[i:integer]:TCard read GetCard;
    end;

implementation

{ TCard }

constructor TCard.Create(r, s: integer);
begin
  rank:=r;
  suit:=s;
  orientation:=back;
end;

procedure TCard.FlipCard;
begin
  if Orientation=back then
    Orientation:=face
  else if Orientation=face then
    Orientation:=back;
end;

function TCard.GetName: string;
begin
  result:=GetRankAsString + 'of' + GetSuitAsString;
end;

function TCard.GetOrientation: TOrientation;
begin
  result:=orientation;
end;

function TCard.GetRank: integer;
begin
  result:=rank;
end;

function TCard.GetRankAsString: string;
begin
  case Rank of
    1: result := 'Ace';
    2: result := 'Two';
    3: result := 'Three';
    4: result := 'Four';
    5: result := 'Five';
    6: result := 'Six';
    7: result := 'Seven';
    8: result := 'Eight';
    9: result := 'Nine';
    10: result := 'Ten';
    11: result := 'Jack';
    12: result := 'Queen';
    13: result := 'King';
  end;
end;

function TCard.GetSuit: integer;
begin
  result:=Suit;
end;

function TCard.GetSuitAsString: String;
begin
  case Suit of
    1: result := 'Diamonds';
    2: result := 'Spades';
    3: result := 'Hearts';
    4: result := 'Clubs';
  end;
end;

{ TDeck }

procedure TDeck.AddCard(card: TCard);
begin
  if not IsFull then
  begin
    if Bottom=51 then
      Bottom:=0
    else
      Bottom:=Bottom+1;
    Size:=Size+1;
  end;
end;

constructor TDeck.Create;
var
  i:integer;
begin
  inherited Create;
  for i := 0 to 51 do
  begin
    FCards[i]:=TCard.Create((i mod 13)+1,i div 13);
    FQueue[i]:=FCards[i];
  end;
  top:=0;
  bottom:=51;
  size:=52;
  randomize;
end;

function TDeck.DealCard: TCard;
begin
  if not IsEmpty then
  begin
    result:=FQueue[top];
    if Top=51 then
      Top:=0
    else
      Top:=Top+1;
    size:=size-1;
  end;
end;

destructor TDeck.Destroy;
var
  i:integer;
begin
   for i := 0 to 51 do
    FCards[i].Free;
  inherited destroy;
end;

function TDeck.IsEmpty: boolean;
begin
  result:= size=0;
end;

function TDeck.IsFull: boolean;
begin
  result:= size=52;
end;

procedure TDeck.Shuffle;
var
  i,RandInt:integer;
  TempCard:TCard;
begin
  for i := 0 to 51 do
  begin
    RandInt:=randomrange(51,0);
    TempCard:=FQueue[i];
    FQueue[i]:=FQueue[RandInt];
  end;

end;

{ THand }

procedure THand.AddCard(card: TCard);
begin
  FCards.Add(card);
end;

procedure THand.Clear;
begin
  FCards.Clear;
end;

constructor THand.Create;
begin
  inherited;
  FCards := TList<TCard>.Create;
end;

destructor THand.Destroy;
begin
  FCards.Free;
  inherited;
end;

function THand.First: TCard;
begin
  result:=FCards[0];
end;

function THand.GetCard(i: integer): TCard;
begin
  result:=FCards[i]
end;

function THand.GetSize: integer;
begin
  result:=FCards.Count;
end;

function THand.IsEmpty: boolean;
begin
  result:=Size=0;
end;

function THand.Last: TCard;
begin
  result:=FCards[FCards.Count-1];
end;

function THand.RemoveCard(i: integer): TCard;
begin
  if Size > i then
  begin
    result:=FCards[i];
    FCards.Delete(i);
  end;
end;

function THand.RemoveFirstCard: TCard;
begin
  if not IsEmpty then
  begin
    result:=FCards.First;
    FCards.Delete(0);
  end;
end;

end.
