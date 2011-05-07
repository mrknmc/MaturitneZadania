unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  f: textfile;
  sirka, vyska, pocet, x, y, v: integer;

implementation

{$R *.dfm}

procedure kreslikruh(x,y,v: integer);
begin
form1.Image1.canvas.Brush.color:=clgreen;
form1.Image1.Canvas.ellipse(x-v,y-v,x+v,y+v);
form1.Image1.canvas.Brush.color:=clblack;
form1.image1.canvas.ellipse(x-1,y-1,x+1,y+1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
assignfile(f,'dtb.txt');
reset(f);
readln(f,sirka,vyska);
readln(f,pocet);
image1.canvas.rectangle(10,10,10+sirka,10+vyska);
repeat
  readln(f,x,y,v);
  kreslikruh(x,y,v);
until eof(f);
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
image1.Canvas.Brush.style:=bsclear;
if image1.Canvas.Pixels[x,y] = clgreen then
  image1.Canvas.TextOut(x+10,y,'Nebezpecne')
else
  image1.canvas.textout(x+10,y,'Bezpecne');
end;

end.
