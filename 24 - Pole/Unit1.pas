unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    TrackBar1: TTrackBar;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  myArray: array [1 .. 10] of integer;
  cislo, index, minIndex, minCislo: integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
cislo:=strtoint(edit2.text);
index:=trackbar1.position;
myArray[index]:=myArray[index]+cislo;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i: Integer;
begin
  minCislo:=myArray[1];
for i := 1 to 10 do
begin
  if myArray[i]<minCislo then
  begin
    minCislo:=myArray[i];
    minIndex:=i;
  end;
  memo1.lines.append(inttostr(i)+': '+inttostr(myArray[i]));
end;
memo1.lines.append('Najmensie cislo ('+inttostr(minCislo)+') je v '+inttostr(minIndex)+'. indexe pola.')
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: integer;
begin
memo1.clear;
for i := 1 to 10 do
  myArray[i]:=0;
end;

end.
