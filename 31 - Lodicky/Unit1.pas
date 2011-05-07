unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  lodicky:array[1..20] of Integer;
implementation

{$R *.dfm}
procedure lodicka (x,y:integer);
begin
   Form1.Image1.Canvas.MoveTo(x,y);
   Form1.Image1.Canvas.LineTo(x+30,y);
   Form1.Image1.Canvas.MoveTo(x+30,y);
   Form1.Image1.Canvas.LineTo(x+25,y+10);
   Form1.Image1.Canvas.MoveTo(x+25,y+10);
   Form1.Image1.Canvas.LineTo(x+5,y+10);
   Form1.Image1.Canvas.MoveTo(x+5,y+10);
   Form1.Image1.Canvas.LineTo(x,y);
   Form1.Image1.Canvas.MoveTo(x+15,y);
   Form1.Image1.Canvas.LineTo(x+15,y-20);
   Form1.Image1.Canvas.MoveTo(x+15,y-20);
   Form1.Image1.Canvas.LineTo(x+25,y-10);
   Form1.Image1.Canvas.MoveTo(x+25,y-10);
   Form1.Image1.Canvas.LineTo(x+15,y-5);
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:Integer;
begin
  Randomize;
  DoubleBuffered:=True;
  for i:=1 to 20 do
    begin
      lodicky[i]:=0;
      lodicka(lodicky[i],i*30);
    end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var i:Integer;
begin
  Image1.Canvas.Pen.Color:=clWhite;
  Image1.Canvas.Brush.Color:=clWhite;
  Image1.Canvas.Rectangle(clientRect);
  Image1.Canvas.Pen.Color:=clBlack;
  for i:=1 to 20 do
    begin
      lodicky[i]:=lodicky[i]+random(10)+1;
      lodicka(lodicky[i],i*30);
      if lodicky[i]>Image1.Width-20 then
        begin
          Timer1.Enabled:=False;
          Image1.Canvas.TextOut(100,i*30,'Lodièka èíslo: '+IntToStr(i)+' bola prvá ');
        end;
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Timer1.Enabled:=True;
  Button1.Enabled:=False;
end;

end.
