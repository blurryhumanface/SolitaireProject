program Project;

uses
  Vcl.Forms,
  UMainMenu in 'UMainMenu.pas' {MainMenu},
  UClock in 'UClock.pas' {ClockForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainMenu, MainMenu);
  Application.CreateForm(TClockForm, ClockForm);
  Application.Run;
end.
