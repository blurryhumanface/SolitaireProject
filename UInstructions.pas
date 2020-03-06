unit UInstructions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TinstructionsForm = class(TForm)
    instructionsMemo: TMemo;
    backButton: TButton;
    procedure backButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    instructionFile:textfile;
    homeGame:integer;
  public
    { Public declarations }
    procedure writeInstructions(game:integer);
  end;

var
  instructionsForm: TinstructionsForm;

implementation
uses UClockForm,UMontanaForm;

{$R *.dfm}

{ TForm1 }

procedure TinstructionsForm.backButtonClick(Sender: TObject);
begin
  case homeGame of
    1:
    begin
      instructionsForm.Hide;
      clockForm.Show;
    end;
    2:
    begin
      instructionsForm.Hide;
      montanaForm.Show;
    end;
    3:;
  end;
  instructionsMemo.Lines.Clear;
end;

procedure TinstructionsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  case homeGame of
    1:clockForm.Show;
    2:montanaForm.Show;
  end;

end;

procedure TinstructionsForm.writeInstructions(game: integer);
var
  instruction:string;
begin
  instructionsMemo.Clear;
  homeGame:=game;
  case game of
    1:
    begin
      assignFile(instructionFile,'clockInstructions.txt');
      reset(instructionFile);
      while not eof(instructionFile) do
      begin
        readln(instructionFile,instruction);
        instructionsMemo.Lines.Add(instruction);
      end;
      closeFile(instructionFile);
    end;
    2:begin
      assignFile(instructionFile,'montanaInstructions.txt');
      reset(instructionFile);
      while not eof(instructionFile) do
      begin
        readln(instructionFile,instruction);
        instructionsMemo.Lines.Add(instruction);
      end;
      closeFile(instructionFile);
    end;
    3:begin
      assignFile(instructionFile,'klondikeInstructions.txt');
      reset(instructionFile);
      while not eof(instructionFile) do
      begin
        readln(instructionFile,instruction);
        instructionsMemo.Lines.Add(instruction);
      end;
      closeFile(instructionFile);
    end;
  end;
end;

end.
