unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  f: textfile;
  p,x,y: integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
reset(f);
repeat
  readln(f,p,x,y);
  image1.canvas.Ellipse(x-1,y-1,x+1,y+1);
  image1.canvas.textout(x+4,y,inttostr(p));
until eof(f);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
assignfile(f,'dtb.txt');
end;

end.
