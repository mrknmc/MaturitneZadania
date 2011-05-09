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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  pismeno: char;
  x,y: integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
randomize;
pismeno:=char(random(26)+97);
y:=0;
x:=210;
image1.canvas.TextOut(x,y,pismeno);
timer1.enabled:=true;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = pismeno then
begin
  y:=0;
  pismeno:=char(random(26)+97);
end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
y:=y+10;
image1.canvas.FillRect(image1.clientrect);
image1.Canvas.TextOut(x,y,pismeno);
if y >= image1.height then
begin
  timer1.Enabled:=false;
  image1.Canvas.TextOut(210,200,'Koniec hry.');
end;
end;

end.
