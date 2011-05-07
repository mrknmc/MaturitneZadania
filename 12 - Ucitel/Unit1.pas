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
    Edit2: TEdit;
    Label2: TLabel;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  pocet, zadanych: integer;
  priemer: real;
  znamka: array [1 .. 5] of integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if strtoint(edit1.text) > 12 then
  pocet:=12
else
  pocet:=strtoint(edit1.text);
button2.Enabled:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
case strtoint(edit2.text) of
  1:  znamka[1]:=znamka[1]+1;
  2:  znamka[2]:=znamka[2]+1;
  3:  znamka[3]:=znamka[3]+1;
  4:  znamka[4]:=znamka[4]+1;
  5:  znamka[5]:=znamka[5]+1;
end;
zadanych:=zadanych+1;
if zadanych = pocet then
begin
  button2.Enabled:=false;
  label3.Caption:='1: '+inttostr(znamka[1]);
  label4.caption:='2: '+inttostr(znamka[2]);
  label5.caption:='3: '+inttostr(znamka[3]);
  label6.caption:='4: '+inttostr(znamka[4]);
  label7.caption:='5: '+inttostr(znamka[5]);
  priemer:=(znamka[1]+(znamka[2]*2)+(znamka[3]*3)+(znamka[4]*4)+(znamka[5])*5) / zadanych;
  label8.caption:='Priemer: '+floattostr(priemer);
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
zadanych:=0;
end;

end.
