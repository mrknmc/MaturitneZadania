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
  s,t,v: string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i: integer;
begin
s:=edit1.text;
t:='';
v:='';
  for i := 1 to length(s) do
  begin
    if s[i]<>' ' then
    v:=v+s[i];
    end;
  for i := length(v) downto 1 do
  begin
    t:=t+v[i];
  end;
if t=v then
label1.caption:=s+' je palindrom.'
else
label1.caption:=s+' nie je palindrom.'
end;

end.
