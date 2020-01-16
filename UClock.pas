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

    var
      CHand1,CHand2,CHand3,CHand4,CHand5,CHand6,CHand7,CHand8,CHand9:TClockHand;
      CHand10,CHand11,CHand12,CHand13,CHand14,CHand15,CHand16:TClockHand;
      CHand17,CHand18,CHand19,CHand20,CHand21,CHand22,CHand23:TClockHand;
      CHand24,CHand25,CHand26,CHand27,CHand28:TClockHand;

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

end.
