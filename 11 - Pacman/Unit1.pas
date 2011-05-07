unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  pacx, pacy ,znax ,znay ,a ,b: integer;
  endgame: bool;

implementation

{$R *.dfm}

procedure znak;
begin
form1.image1.canvas.Brush.color:=clblue;
form1.image1.Canvas.Ellipse(znax,znay,znax+50,znay+50);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
endgame:=false;
pacx:=50;
pacy:=50;
znax:=100;
znay:=100;
form1.image1.canvas.Brush.color:=clblue;
form1.image1.Canvas.Ellipse(znax,znay,znax+50,znay+50);
image1.canvas.Brush.color:=clyellow;
image1.Canvas.Ellipse(pacx,pacy,pacx+50,pacy+50);
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if endgame=false then
begin
  case key of
    VK_Left:
    begin
      timer1.Enabled:=true;
      a:=-25;
      b:=0;
    end;
    VK_right:
    begin
      timer1.Enabled:=true;
      a:=25;
      b:=0;
    end;
    VK_down:
    begin
      timer1.Enabled:=true;
      a:=0;
      b:=25;
    end;
    VK_up:
    begin
      timer1.Enabled:=true;
      a:=0;
      b:=-25;
    end;
end;
end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
pacx:=pacx+a;
pacy:=pacy+b;
image1.canvas.Brush.color:=clwhite;
image1.canvas.fillrect(image1.ClientRect);
znak;
if (pacx=znax) and (pacy=znay)  then
begin
  znax:=(random(image1.width) div 50)*50;
  znay:=(random(image1.height) div 50)*50;
end;
image1.canvas.Brush.color:=clyellow;
image1.Canvas.Ellipse(pacx,pacy,pacx+50,pacy+50);
if (pacx>=image1.Width-25) or (pacx<=-25) or (pacy>=image1.Height-25) or (pacy<=-25) then
begin
  timer1.Enabled:=false;
  endgame:=true;
  image1.canvas.Font.Height:=30;
  image1.canvas.Brush.Style:=bsclear;
  image1.Canvas.TextOut(180,200,'Koniec hry.');
end;
end;

end.
