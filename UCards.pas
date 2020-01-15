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

end;

function TCard.GetName: string;
begin

end;

function TCard.GetOrientation: TOrientation;
begin

end;

function TCard.GetRank: integer;
begin

end;

function TCard.GetRankAsString: string;
begin

end;

function TCard.GetSuit: integer;
begin

end;

function TCard.GetSuitAsString: String;
begin

end;

end.
