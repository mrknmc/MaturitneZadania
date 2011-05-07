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
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
  cislo, kolo1, kolo2, best1, best2, bestc, dis1, dis2: integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
reset(f);
readln(f,cislo,best1,best2);
bestc:=best1+best2;
reset(f);
repeat
  readln(f,cislo,kolo1,kolo2);
  if (kolo1 <> 0) and (kolo2 <> 0) and (kolo1+kolo2 < bestc) then
    bestc:=kolo1+kolo2;
  if kolo1 = 0 then
    dis1:=dis1+1
  else if kolo1<best1 then
    best1:=kolo1;
  if kolo2 = 0 then
    dis2:=dis2+1
  else if kolo2<best2 then
    best2:=kolo2;
until eof(f);
label1.caption:=label1.caption+inttostr(dis1);
label2.caption:=label2.caption+inttostr(dis2);
label3.caption:=label3.caption+inttostr(best1);
label4.caption:=label4.caption+inttostr(best2);
label5.caption:=label5.caption+inttostr(bestc);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
assignfile(f,'dtb.txt');
end;

end.
