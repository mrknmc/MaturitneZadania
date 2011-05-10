unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
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
  meno, vitaz: string;
  f: textfile;
  vysledok, najlepsi: integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
append(f);
writeln(f,edit2.text,' ',edit1.text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
reset(f);
readln(f,najlepsi,vitaz);
repeat
  readln(f,vysledok,meno);
  if vysledok < najlepsi then
    vitaz:=meno;
until eof(f);
label3.Caption:='Vyhral to '+vitaz+'.';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
assignfile(f,'dtb.txt');
end;

end.
