unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  s,v: string;
  t: integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i: integer;
begin
s:=edit1.text;
v:='';
  for I := 1 to length(s) do
  if s[i]<>' ' then
  v:=v+s[i];
t:=0;
for I := 1 to (length(v) div 2)+1 do
begin
  if v[i]=v[length(v)-i+1] then
  t:=t+1;
end;
if t>=(length(s) div 2)+1 then
label1.caption:='Slovo '+s+' je palindrom.'
else
label1.caption:='Slovo '+s+' nie je palindrom.'
end;

end.
