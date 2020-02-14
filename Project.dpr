program Project;

uses
  Vcl.Forms,
  UMainMenu in 'UMainMenu.pas' {MainMenu},
  UClockForm in 'UClockForm.pas' {ClockForm},
  UClock in 'UClock.pas',
  UFileCreater in 'UFileCreater.pas',
  UMiddleStep in 'UMiddleStep.pas',
  UInstructions in 'UInstructions.pas' {instructionsForm},
  UCards in 'UCards.pas',
  UMontana in 'UMontana.pas',
  UMontanaForm in 'UMontanaForm.pas' {MontanaForm},
  UImageHandling in 'UImageHandling.pas';

{$R *.res}

begin
  CDeck:=TDeck.Create;
  CDeck.Shuffle;
  MDeck:=TDeck.Create;
  MDeck.Shuffle;
  KDeck:=TDeck.Create;
  KDeck.Shuffle;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainMenu, MainMenu);
  Application.CreateForm(TClockForm, ClockForm);
  Application.CreateForm(TinstructionsForm, instructionsForm);
  Application.CreateForm(TMontanaForm, MontanaForm);
  Application.Run;
end.
