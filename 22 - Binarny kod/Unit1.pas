unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  binar: string[9];
  cislo,deci: integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  I,j: Integer;
begin
deci:=0;
cislo:=0;
binar:=edit1.Text;
j:=1;
for I := length(binar) downto 1 do
begin
  cislo:=strtoint(binar[i]);
  deci:=deci+cislo*j;
  j:=j*2;
end;
label1.caption:=(binar+'(2) -> '+inttostr(deci)+'(10).')
end;

end.
