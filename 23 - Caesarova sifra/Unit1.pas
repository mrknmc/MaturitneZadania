unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    TrackBar1: TTrackBar;
    Label1: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  f,g: textfile;
  rozsah,cislo: integer;
  letter: char;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
rozsah:=trackbar1.position;
reset(f);
repeat
  read(f,letter);
  cislo:=ord(letter)+rozsah;
  if fileexists('sifra.txt') then
    append(g)
  else
    rewrite(g);
  write(g,char(cislo));
until eof(f);
closefile(f);
closefile(g);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
assignfile(f,'text.txt');
assignfile(g,'sifra.txt');
end;

end.
