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
uses UClockForm;

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
    2:;
    3:;
  end;
  instructionsMemo.Lines.Clear;
end;

procedure TinstructionsForm.writeInstructions(game: integer);
var
  instruction:string;
begin
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
