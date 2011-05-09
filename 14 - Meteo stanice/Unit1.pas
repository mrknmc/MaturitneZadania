unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  dtb: textfile;
  stanica: string[3];
  stanicaMax,stanicaMin,stav: string;
  pocet,pocetJasno: integer;
  teplota,totalTeploty,teplotaMax,teplotaMin,priemTeplota: real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
reset(dtb);
totalteploty:=0;
teplotaMax:=0;
teplotaMin:=0;
pocet:=0;
  repeat
  readln(dtb,stanica,teplota,stav);
  totalteploty:=totalteploty+teplota;
  pocet:=pocet+1;
    if stav = ' JJ' then
    pocetJasno:=pocetJasno+1;
    if teplota>teplotaMax then
    begin
    teplotaMax:=teplota;
    stanicaMax:=stanica;
    end;
    if teplota<teplotaMin then
    begin
    teplotaMin:=teplota;
    stanicaMin:=stanica;
    end;
  until eof(dtb);
priemTeplota:=totalTeploty/pocet;
label4.Caption:=floattostr(teplotaMax)+'°C namerané v '+stanicaMax;
label5.Caption:=floattostr(teplotaMin)+'°C namerané v '+stanicaMin;
label6.Caption:=floattostr(priemTeplota)+'°C';
label8.Caption:=floattostr((pocetJasno/pocet)*100)+'%';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
assignfile(dtb,'pocasie.txt');
end;

end.
