unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  rand: integer;
  PCtip, mojtip: string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
case random(3) of
  0: PCtip:='kamen';
  1: PCtip:='papier';
  2: PCtip:='noznice';
end;
mojtip:=edit1.text;
if mojtip = PCtip then
  label2.Caption:='Remiza, aj ja som dal '+PCtip+'.'
else
  if ((mojtip = 'kamen') and (PCtip = 'papier')) or
     ((mojtip = 'papier') and (PCtip = 'noznice')) or
     ((mojtip = 'noznice') and (PCtip = 'kamen')) then
    label2.caption:='Vyhral som. Mal som '+PCtip+'.'
else
  label2.caption:='Vyhral si. Mal som '+PCtip+'.';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
randomize;
end;

end.
