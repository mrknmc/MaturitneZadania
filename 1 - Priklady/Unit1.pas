unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Label4: TLabel;
    Button2: TButton;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  cislo1, cislo2, sum, spravne, celkovo: integer;
  perc: real;

implementation

{$R *.dfm}

procedure dajpriklad;
begin
cislo1:=random(100)+1;
cislo2:=random(100-cislo1);
sum:=cislo1+cislo2;
//form1.label5.caption:=inttostr(sum);
form1.label4.caption:=inttostr(cislo1)+' + '+inttostr(cislo2)+' =';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
dajpriklad;
if sum = strtoint(form1.edit1.text) then
  spravne:=spravne+1;
celkovo:=celkovo+1;
form1.label3.caption:=inttostr(spravne)+'/'+inttostr(celkovo);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
perc:=(spravne / celkovo) * 100;
if perc>90 then
  label5.caption:='1 - vyborny'
  else if perc>70 then
  label5.caption:='2 - chvalitebny'
  else if perc>50 then
  label5.caption:='3 - dobry'
  else if perc>30 then
  label5.caption:='4 - dostatocny'
  else label5.caption:='5 - nedostatocny';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
randomize;
celkovo:=0;
spravne:=0;
dajpriklad;
end;

end.
