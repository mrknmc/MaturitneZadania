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
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  rok, cislo: integer;
  retazec: string;
  znamenie: array [0 .. 11] of string = ('opica', 'kohut', 'pes', 'svina', 'potkan', 'byvol','tiger', 'zajac', 'drak', 'had', 'kon', 'ovca');

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  I: Integer;
begin
cislo:=0;
retazec:=edit1.text;
rok:=strtoint(edit1.text);
label3.caption:=znamenie[rok mod 12];
for I := 1 to length(retazec) do
  cislo:=cislo+strtoint(retazec[i]);
label2.Caption:='Vase stastne cislo je '+inttostr(cislo)+'.';;
end;

end.
