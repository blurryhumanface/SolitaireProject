unit UCards;

interface
  uses sysutils, math, Generics.Collections;
  type
    TOrientation = (face,back);
    TCard=class
      private
        rank: 1..13;
        suit: 1..4;
        orientation: TOrientation;
      public
        constructor Create(r,s:integer);
        function GetRank:integer;
        function GetSuit:integer;
        function GetRankAsString:string;
        function GetSuitAsString:String;
        function GetName:string;
        function GetOrientation:TOrientation;
    end;

implementation

{ TCard }

constructor TCard.Create(r, s: integer);
begin
  rank:=r;
  suit:=s;
  orientation:=back;
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

end.
