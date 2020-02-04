unit UFileCreater;

interface
  procedure writeToTxtFile(str:string);

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

end.
