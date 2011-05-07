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
  f: textfile;
  slovo: string;
  jetam: bool;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
reset(f);
jetam:=false;
repeat
  readln(f,slovo);
  if slovo = edit1.text then
    jetam:=true;
until eof(f);
if jetam = true then
  label2.caption:='Slovo '+edit1.text+' sa v databaze nachadza.'
  else
  label2.caption:='Slovo '+edit1.text+' sa v databaze nenachadza. Zadaj preklad!';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if (edit1.text <> '') and (edit2.text <> '') then
begin
  append(f);
  writeln(f,edit1.text);
  writeln(f,edit2.text);
  closefile(f);
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
edit1.Text:='';
edit2.text:='';
button2.Caption:='Pridat';
label1.caption:='Zadaj slovo:';
Button1.Caption:='OK';
assignfile(f,'dtb.txt');
end;

end.
