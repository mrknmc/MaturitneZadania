unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    TrackBar1: TTrackBar;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  mesiac: array [1 .. 12] of string;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
memo1.clear;
memo2.clear;
mesiac[1]:='januar';
mesiac[2]:='februar';
mesiac[3]:='marec';
mesiac[4]:='april';
mesiac[5]:='maj';
mesiac[6]:='jun';
mesiac[7]:='jul';
mesiac[8]:='august';
mesiac[9]:='september';
mesiac[10]:='oktober';
mesiac[11]:='november';
mesiac[12]:='december';
end;

end.
