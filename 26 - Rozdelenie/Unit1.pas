unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
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
  f,g,h: textfile;
  znak: string[1];
  cislo1, cislo2: integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
reset(f);
repeat
  readln(f,znak,cislo1,cislo2);
  if znak = '+' then
  begin
    if fileexists('plus.txt') then
      append(g)
    else
      rewrite(g);
    writeln(g,cislo1,' + ',cislo2,' = ',cislo1+cislo2);
    closefile(g);
  end;
  if znak = '*' then
  begin
   if fileexists('krat.txt') then
      append(h)
    else
      rewrite(h);
    writeln(h,cislo1,' * ',cislo2,' = ',cislo1*cislo2);
    closefile(h);
  end;
until eof(f);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
AssignFile(f,'dtb.txt');
assignfile(g,'plus.txt');
assignfile(h,'krat.txt');
end;

end.
