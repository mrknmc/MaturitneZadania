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
  retazec,bin,vysledok,finalny: string;
  cislo: integer;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
  I,j: Integer;
begin
vysledok:='';
bin:='';
cislo:=0;
retazec:=edit1.text;
for I := 1 to length(retazec) do
begin
  bin:='';
  cislo:=ord(retazec[i]);
  repeat
    bin:=inttostr(cislo mod 2)+bin;
    cislo:=cislo div 2;
  until cislo=0;
  vysledok:=vysledok+bin;
end;
{for I := 1 to length(vysledok) do
begin
  j:=length(vysledok);
  finalny:=vysledok;
  finalny[i]:=vysledok[j];
  j:=j-1;
end;
label1.caption:=finalny;}
label1.caption:=vysledok;
end;

end.
