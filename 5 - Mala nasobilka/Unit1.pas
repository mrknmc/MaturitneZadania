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
    Edit2: TEdit;
    Button2: TButton;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  pocetPrikladov, cislo1, cislo2, spravne, celkovo: integer;

implementation

{$R *.dfm}

procedure spravpriklad;
begin
cislo1:=random(10);
cislo2:=random(10);
form1.label2.caption:=inttostr(cislo1)+' * '+inttostr(cislo2)+' =';
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
if strtoint(edit1.text)>20 then
  pocetPrikladov:=20
else
  pocetPrikladov:=strtoint(edit1.text);
spravpriklad;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if cislo1*cislo2 = strtoint(edit2.text) then
  spravne:=spravne+1;
celkovo:=celkovo+1;
label3.Caption:=inttostr(spravne)+'/'+inttostr(celkovo);
spravpriklad;
if celkovo = pocetPrikladov then
begin
  label2.Caption:='To bol posledny priklad.';
  button2.Enabled:=false;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
randomize;
spravne:=0;
celkovo:=0;
end;
end.
