unit UCards;

interface
  uses sysutils, math, Generics.Collections,UFileCreater;
  {This is a list of all of the existing libraries that I need for this unit}
  type
    TOrientation = (face,back);
    {I created a data type specifically to denote the orientation of the cards
     because I know that the orientation is important in both Clock Solitaire and
     Klondike Solitaire}
    TCard=class
      private
        rank: 1..13; {The rank is the value on the card's face
        there are 13 ranks from Ace to King}
        suit: 0..3; {In a deck of cards there are 4 suits:
        Hearts, Diamonds, Spades and Clubs}
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
    {This is a collection of cards the size of a regular deck of cards}
    TDeck = Class
      Private
        FCards, FQueue:TCards;
        {These are the actual list of cards that create the deck
         FCards is the set of ordered cards that the deck is fully composed of
         FQueue is the set of cards that the user interacts with}
        FFront, FRear, FSize: Integer;
        {These are different indicators that relate to the different aspects
         of FQueue}
      Public
        constructor Create;
        {This procedure creates the deck and all of its components}
        destructor Destroy;
        {This procedure frees up all instances of the deck and its components}
        procedure Shuffle;
        {This procedure reorders the cards in FQueue}
        procedure AddCard(card:TCard);
        {This procedure adds a card to FQueue}
        function DealCard:TCard;
        {This function removes the top card in the queue and returns the card
         that is removed}
        function IsEmpty:boolean;
        {This function returns a boolean on whether the queue is empty}
        function IsFull:boolean;
        {This function returns a boolean on whether the queue is full}
        property Top :integer read FFront write FFront;
        {This property is a way of reading and editing where the front of the
        queue is}
        property Bottom :integer read FRear write FRear;
        {This property is a way of reading and editing where the back of the
        queue is}
        property Size :integer read FSize write FSize;
        {This property is a way of reading and editing the number of cards in
        the queue}
        property Cards :TCards read FQueue;
        {This property allows all the cards in the queue to be read so that
         they can be stored in the textfile for debugging}
    End;
    THand = class abstract {This declares the the class of THand is a class that
    is never truly present in the code but is inherited by the other hand
    classes}
      protected
        FCards:TList<TCard>;
        {This is the list of cards that the hand is composed of}
        function GetCard(i: integer): TCard;
        {This function returns the card that is in the position i in the hand}
        function GetSize:integer;
        {This function returns the size of the hand}
      public
        constructor Create; virtual;
        {This procedure establishes the creation code that is universal to
         all of the class hands, while also allowing additional code to be
         included}
        destructor Destroy; override;
        {This procedure establishes the destructor for all of the class hands
         and overrides the established destructor code}
        procedure AddCard(card:TCard);
        {This procedure adds a card to the list of the cards that is the hand}
        procedure Clear;
        {This procedure removes all of the cards from the hand}
        function RemoveCard(i:integer):TCard;
        {This function returns the card at the position i after removing it
         from the hand}
        function RemoveFirstCard:TCard;
        {This function removes the first card in the hand and returns that card}
        function RemoveLastCard:TCard;
        {This function removes the last card in the hand and returns that card}
        function First:TCard;
        {This function returns the card that is the first in the list}
        function Last:TCard;
        {This function returns the card that is the last in the list}
        function IsEmpty:boolean;
        {This function returns boolean for if there are no cards in the hand}
        property Size: integer read GetSize;
        {This property reads how many cards there are in the hand}
        property Cards[i:integer]:TCard read GetCard;
        {This property reads the card at position i in the hand}
    end;

    var
      CDeck:TDeck;
      MDeck:TDeck;
      KDeck:TDeck;
implementation

{ TCard }

constructor TCard.Create(r, s: integer);
begin
  rank:=r;
  {This sets the value of rank to be the passed value of r}
  suit:=s;
  {This sets the value of suit to be the passed value of s}
  orientation:=back;
  {This sets the default orientation to be the back of the cards facing the
   player}
end;

procedure TCard.FlipCard;
begin
  if Orientation=back then
  {This line checks to see the current orientation of the card to see if it is
   face down}
    Orientation:=face
    {If it is face down then it is changed to being face up}
  else if Orientation=face then
  {If it isn't face down then this line checks to see if it is face up}
    Orientation:=back;
    {If it is face up then it is changed to being face down}
end;

function TCard.GetName: string;
begin
  result:=GetRankAsString + ' of ' + GetSuitAsString;
  {This line sets the result to be the return of GetRankAsString of the return
   of GetSuitAsString}
end;

function TCard.GetOrientation: TOrientation;
begin
  result:=orientation;
  {This line returns the current value of orientation}
end;

function TCard.GetRank: integer;
begin
  result:=rank;
  {This line returns the current value of rank}
end;

function TCard.GetRankAsString: string;
begin
  case Rank of
  {This line checks the current value of rank}
    1: result := 'Ace';
    {If the current value of rank is 1 then the rank as a string is 'Ace'}
    2: result := 'Two';
    {If the current value of rank is 2 then the rank as a string is 'Two'
     the rest of values between 2 and 10 inclusively are the same with the
     result being the word form of the number}
    3: result := 'Three';
    4: result := 'Four';
    5: result := 'Five';
    6: result := 'Six';
    7: result := 'Seven';
    8: result := 'Eight';
    9: result := 'Nine';
    10: result := 'Ten';
    11: result := 'Jack';
    {If the current value of rank is 11 then the rank as a string is 'Jack'}
    12: result := 'Queen';
    {If the current value of rank is 12 then the rank as a  string is 'Queen'}
    13: result := 'King';
    {If the current value of rank is 13 then the rank as a string is 'King'}
  end;
end;

function TCard.GetSuit: integer;
begin
  result:=Suit;
  {This line returns the current value of suit}
end;

function TCard.GetSuitAsString: String;
begin
  case Suit of
  {This line checks the current value of suit}
    0: result := 'Diamonds';
    {If the current value of suit is 1 then the suit as a string is 'Diamonds'}
    1: result := 'Spades';
    {If the current value of suit is 2 then the suit as a string is 'Spades'}
    2: result := 'Hearts';
    {If the current value of suit is 3 then the suit as a string is 'Hearts'}
    3: result := 'Clubs';
    {If the current value of suit is 4 then the suit as a string is 'Clubs'}
  end;
end;

{ TDeck }

procedure TDeck.AddCard(card: TCard);
begin
  if not IsFull then
  {This line calls the function IsFull to see if the deck is full.
   If it isn't full then the next block of code run}
  begin
    if Bottom=51 then
    {This line checks to see whether or not the current value for bottom is 51}
      Bottom:=0
      {If the current value of bottom is 51 then the new value is set to be 0}
    else
      Bottom:=Bottom+1;
      {If the current value of bottom isn't 51 then the current value is
      incremented by 1}
    Size:=Size+1;
    {The size of the deck is then incremented by 1}
  end;
end;

constructor TDeck.Create;
var
  i:integer;
begin
  inherited Create;
  {This line says that this procedure uses the pre-existing constructor in
   addition to the additional code it is adding}
  for i := 0 to 51 do
  {This line starts a for loop which repeats for the same length as the deck}
  begin
    FCards[i]:=TCard.Create(((i mod 13)+1),i div 13);
    {This sets the value of the position of i in the array to be the next card
     starting with the ace of the first suit}
    FQueue[i]:=FCards[i];
    {This copies the card that is in position i in FCards to the same position
     in FQueue}
  end;
  top:=0;
  {This line establishes that the first card in the deck at creation is the
   card in the 0th position}
  bottom:=51;
  {This line establishes that the last card in the deck at creation is the card
   in the 51st position}
  size:=52;
  {This line establishes that the number of cards of the deck at creation is 52}
  randomize;
  {This line changes the seed being used by the computer for generating
   random numbers}
end;

function TDeck.DealCard: TCard;
begin
  if not IsEmpty then
  {This line calls the function IsEmpty to see if the deck is empty.
   If it isn't empty then the next block of code is run}
  begin
    result:=FQueue[top];
    {This line returns the top card of the deck}
    if Top=51 then
    {This line checks to see whether or not the current value for top is 51}
      Top:=0
      {If the current value of top is 51 then the new value is set to be 0}
    else
      Top:=Top+1;
      {If the current value of top isn't 51 then the current value is
       incremented by 1}
    size:=size-1;
    {The size is decremented by 1}
  end;
end;

destructor TDeck.Destroy;
var
  i:integer;
begin
   for i := 0 to 51 do
   {This for loop iterates over length of the deck of cards}
    FCards[i].Free;
    {This line frees up the memory space allocated to the card in position
     i in FCards}
  inherited destroy;
  {This procedure then uses the pre-existing destructor code}
end;

function TDeck.IsEmpty: boolean;
begin
  result:= size=0;
  {This line returns the boolean of if the size of the deck is 0}
end;

function TDeck.IsFull: boolean;
begin
  result:= size=52;
  {This line returns the boolean of if the size of the deck is 52}
end;

procedure TDeck.Shuffle;
var
  i,RandInt:integer;
  TempCard:TCard;
begin
  for i := 0 to 51 do
  {This for loop repeats for the length of the deck of cards}
  begin
    RandInt:=randomrange(51,0);
    {This line sets the variable RandInt to be a random integer in the range of
     51 and 0 inclusively}
    TempCard:=FQueue[i];
    {This assigns the card in position i of FQueue to a temporary card}
    FQueue[i]:=FQueue[RandInt];
    {This copies the card in the random position in FQueue to position i in
     FQueue}
    FQueue[RandInt]:=TempCard;
    {This copies the card stored in TempCard to the random position in FQueue}
  end;
end;

{ THand }

procedure THand.AddCard(card: TCard);
begin
  FCards.Add(card);
  {This procedure calls the method of TList to add the card that
   was passed to the procedure}
   writeToTxtFile(Cards[size-1].GetName);
   writeToTxtFile('');
end;

procedure THand.Clear;
begin
  FCards.Clear;
  {This procedure calls the method of TList to clear all the elements of the
   FCards}
end;

constructor THand.Create;
begin
  inherited Create;
  {This line means that this procedure uses the existing constructor}
  FCards := TList<TCard>.Create;
  {This line creates FCards by calling the creation method of TList}
end;

destructor THand.Destroy;
begin
  FCards.Free;
  {This line frees the memory assigned to FCards}
  inherited destroy;
  {This line means that this procedure uses the existing Destructor}
end;

function THand.First: TCard;
begin
  result:=FCards[0];
  {This line returns the first card in FCards}
end;

function THand.GetCard(i: integer): TCard;
begin
  result:=FCards[i]
  {This line returns the card in position i in FCards}
end;

function THand.GetSize: integer;
begin
  result:=FCards.Count;
  {This line calls the method of Count and this returns the number of cards
   in the list and then this list returns that value as the size}
end;

function THand.IsEmpty: boolean;
begin
  result:=Size=0;
  {This line returns the result of the comparison of the size of the hand with
   0}
end;

function THand.Last: TCard;
begin
  result:=FCards[FCards.Count-1];
  {This line returns the card that is one less than the number of cards in the
   hand}
end;

function THand.RemoveCard(i: integer): TCard;
begin
  if Size > i then
  {This line compares the value i and the number of cards in the list to see if
   there are more cards in the hand than the card they're trying to remove so
   so that they cannot remove a card that does not exist in the hand}
  begin
    result:=FCards[i];
    {This line returns the card in position i}
    FCards.Delete(i);
    {This line calls the method of TList which deletes the instance of the card
     in position i from itself}
  end;
end;

function THand.RemoveFirstCard: TCard;
begin
  if not IsEmpty then
  {This line checks to see if there are any cards in the hand before trying to
   taking the first card out of it}
  begin
    result:=FCards.First;
    {This line returns the first card in the hand}
    FCards.Delete(0);
    {This line calls the method of TList which deletes the instance of the
     first card from itself}
  end;
end;

function THand.RemoveLastCard: TCard;
begin
  if not IsEmpty then
  {This line checks to see if there are any cards in the hand before trying to
   taking the first card out of it}
  begin
    result:=FCards.Last;
    {This line returns the last card in the hand}
    FCards.Delete(Size-1);
    {This line calls the method of TList which deletes the instance of the card
     in the last position from itself}
  end;
end;

end.
