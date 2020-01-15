program Project;

uses
  Vcl.Forms,
  UMainMenu in 'UMainMenu.pas' {MainMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainMenu, MainMenu);
  Application.Run;
end.
