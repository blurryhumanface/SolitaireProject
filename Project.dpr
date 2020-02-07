program Project;

uses
  Vcl.Forms,
  UMainMenu in 'UMainMenu.pas' {MainMenu},
  UClockForm in 'UClockForm.pas' {ClockForm},
  UClock in 'UClock.pas',
  UCards in 'UCards.pas',
  UFileCreater in 'UFileCreater.pas',
  UMiddleStep in 'UMiddleStep.pas',
  UInstructions in 'UInstructions.pas' {instructionsForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainMenu, MainMenu);
  Application.CreateForm(TClockForm, ClockForm);
  Application.CreateForm(TinstructionsForm, instructionsForm);
  Application.Run;
end.
