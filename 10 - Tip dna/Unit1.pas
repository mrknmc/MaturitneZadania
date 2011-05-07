unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  myArray: array [1 .. 2] of string;
  i: integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
randomize;
myArray[1]:='Dnes bude prsat';
myArray[2]:='Dnes bude pekne';
i:=random(2)+1;
timer1.enabled:=true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
image1.canvas.TextOut(100*i,50,myArray[i]);
end;

end.
