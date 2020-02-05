program Project;

uses
  Vcl.Forms,
  UMainMenu in 'UMainMenu.pas' {MainMenu},
  UClockForm in 'UClockForm.pas' {ClockForm},
  UClock in 'UClock.pas',
  UCards in 'UCards.pas',
  UFileCreater in 'UFileCreater.pas',
  UMiddleStep in 'UMiddleStep.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainMenu, MainMenu);
  Application.CreateForm(TClockForm, ClockForm);
  Application.Run;
end.
