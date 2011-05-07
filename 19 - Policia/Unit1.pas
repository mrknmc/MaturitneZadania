unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  dtb: textfile;
  spz: string[7];
  pokuta,sumPokuta: integer;
  najdi:string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
reset(dtb);
sumPokuta:=0;
najdi:='�PZ sa v datab�ze nenach�dza.';
  repeat
  readln(dtb,spz,pokuta);
  if edit1.text = spz then
    begin
    sumPokuta:=sumPokuta+pokuta;
    najdi:='�PZ '+edit1.text+' sa v datab�ze nach�dza.';
    label3.caption:='�PZ '+edit1.text+' dl�� '+inttostr(sumPokuta)+' �.';
    end;
  until eof(dtb);
label2.caption:=najdi;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
assignfile(dtb,'dtb.txt');
end;

end.
