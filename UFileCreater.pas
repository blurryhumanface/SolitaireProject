unit UFileCreater;

interface
  uses
    UCards;
  procedure writeToTxtFile(str:string);
  procedure writeToFile(str:string;ori:Torientation);

implementation
  procedure writeToTxtFile(str:string);
  var
    txt:TextFile;
    i:integer;
  begin
    assignFile(txt,'DeckLog.txt');
    append(txt);
    writeln(txt,str);
    closeFile(txt);
  end;

  procedure writeToFile(str:string;ori:Torientation);
  var
    Tx:TextFile;
    o:string;
  begin
    if ori=back then
      o:='back'
    else
      o:='face';
    assignFile(Tx,'DeckLog2.txt');
    append(tx);
    write(tx,str);
    write(tx,' ');
    write(tx,o);
    writeln(tx,'');
    closeFile(Tx);
  end;
end.
