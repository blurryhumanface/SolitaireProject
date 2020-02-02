unit UFileCreater;

interface
  uses UCards;
  procedure writeToTxtFile(deck:TDeck);

implementation
  procedure writeToTxtFile(str:string);
  var
    txt:TextFile;
    i:integer;
  begin
    assignFile(txt,'DeckLog.txt');
    rewrite(txt);
    for i := 0 to 51 do
    begin
      writeln(txt,deck.Cards[i].GetName);
    end;
    closeFile(txt);
  end;

end.
