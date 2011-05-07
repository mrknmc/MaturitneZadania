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
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  retazec,cislo,vysledok,finalny: string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i,j: Integer;
begin
retazec:=edit1.text;
cislo:='';
vysledok:='';
for I := 1 to length(retazec) do
  cislo:=cislo+inttostr(ord(retazec[i]));
repeat
  vysledok:=vysledok+inttostr((strtoint(cislo) mod 2));
  cislo:=inttostr(strtoint(cislo) div 2);
until strtoint(cislo) = 0;
for I := 1 to length(vysledok) do
begin
  j:=length(vysledok);
  finalny[i]:=vysledok[j];
  j:=j-1;
end;
label1.caption:=finalny;
end;

end.
