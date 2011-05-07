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
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sirkaPolice,sirkaKnihy,sirkaSpolu: integer;
  f: textfile;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
sirkaPolice:=strtoint(edit1.text);
reset(f);
sirkaSpolu:=0;
repeat
  readln(f,sirkaKnihy);
  sirkaSpolu:=sirkaSpolu+sirkaKnihy;
  if sirkaSpolu>sirkaPolice then
  begin
    memo1.Lines.append(inttostr(sirkaSpolu-sirkaKnihy));
    sirkaSpolu:=sirkaKnihy;
  end;
until eof(f);
if (eof(f)) and (sirkaSpolu<=sirkaPolice) then
  label1.caption:='Vsetky knihy sa do police zmestili';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
AssignFile(f,'dtb.txt');
memo1.Clear;
end;

end.
