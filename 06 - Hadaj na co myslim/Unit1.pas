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
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  rand,tip: integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
tip:=strtoint(edit1.text);
if tip > rand then
  label1.caption:='Uber.'
else if tip = rand then
  label1.caption:='Uhadol si'
else
  label1.caption:='pridaj';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
randomize;
rand:=random(100)+1;
end;

end.
