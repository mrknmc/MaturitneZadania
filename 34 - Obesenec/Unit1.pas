unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
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
  slovo, sifra: string;

implementation

{$R *.dfm}

procedure Shuffle;
var i: integer;
begin
randomize;
i:=0;
sifra:='';
reset(f);
repeat
  readln(f,slovo);
  i:=i+1;
until eof(f);
i:=random(i)+1;
reset(f);
for I := 1 to i do
  readln(f,slovo);
for i := 1 to length(slovo) do
  sifra:=sifra+'_';
form1.label1.caption:=sifra;
end;

procedure TForm1.Button1Click(Sender: TObject);
var i: integer;
begin
if length(edit1.text)<>1 then
  label2.caption:='Zadaj len 1 pismeno.'
else
  begin
  for I := 0 to length(slovo) do
    if edit1.text = slovo[i] then
      sifra[i]:=slovo[i];
  end;
label1.caption:=sifra;
if sifra = slovo then
  label2.caption:='Koniec hry.';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
assignfile(f,'dtb.txt');
Shuffle;
end;

end.
