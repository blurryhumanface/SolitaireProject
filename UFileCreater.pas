unit UFileCreater;

interface
  uses UMainMenu;
  procedure writeToTxtFile(str:string);
  procedure openMainMenu;

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

  procedure openMainMenu;
  begin
    MainMenu.show;
  end;

end.
