unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
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
  meno: string[5];
  kusy,pocet,minKusy: integer;
  cena,celkovaCena: real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
pocet:=0;
celkovaCena:=0;
reset(f);
readln(f,meno,minKusy,cena);
reset(f);
  repeat
  Readln(f,meno,kusy,cena);
    if minKusy > kusy then
    minKusy:=kusy;
  celkovaCena:=celkovaCena+(kusy*cena);
  pocet:=pocet+1;
  until eof(f);
label2.caption:='V sklade je '+IntToStr(pocet)+' druhov tovaru. Celkov� cena je '+FloatToStr(celkovaCena)+' . Najmenej kusov je '+IntToStr(minKusy)+' .';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
AssignFile(f,'dtb.txt');
end;

end.
