unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  vyska,percento: real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i: integer;
begin
i:=0;
vyska:=strtoint(edit1.text);
percento:=strtoint(edit2.text)/100;
  repeat
  vyska:=vyska*percento;
  if vyska>=1 then
  begin
  i:=i+1;
  Memo1.Lines.Append(floattostr(vyska));
  end;
  until (vyska<=1);
label3.caption:='Po�et v�skokov: '+inttostr(i);  
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Memo1.Clear;
end;

end.
