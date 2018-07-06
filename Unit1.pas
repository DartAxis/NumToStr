unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,clipbrd;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Memo1: TMemo;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Label4: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure render;
begin
  if form1.checkbox7.Checked then form1.FormStyle:=fsStayOnTop;

end;
function trilch(chislo:string):string;
var return_str:string;
begin
  if chislo[1]='9' then return_str:=' девятьсот';
  if chislo[1]='8' then return_str:=' восемььсот';
  if chislo[1]='7' then return_str:=' семьсот';
  if chislo[1]='6' then return_str:=' шестььсот';
  if chislo[1]='5' then return_str:=' пятььсот';
  if chislo[1]='4' then return_str:=' четыреста';
  if chislo[1]='3' then return_str:=' триста';
  if chislo[1]='2' then return_str:=' двести';
  if chislo[1]='1' then return_str:=' сто';
  if chislo[2]='2' then return_str:=return_str+' двадцать';
  if chislo[2]='3' then return_str:=return_str+' тридцать';
  if chislo[2]='4' then return_str:=return_str+' сорок';
  if chislo[2]='5' then return_str:=return_str+' пятьдесят';
  if chislo[2]='6' then return_str:=return_str+' шестьдесят';
  if chislo[2]='7' then return_str:=return_str+' семьдесят';
  if chislo[2]='8' then return_str:=return_str+' восемьдесят';
  if chislo[2]='9' then return_str:=return_str+' девяносто';
  if chislo[2]+chislo[3]='10' then return_str:=return_str+' десять триллионов';
  if chislo[2]+chislo[3]='11' then return_str:=return_str+' одиннадцать триллионов';
  if chislo[2]+chislo[3]='12' then return_str:=return_str+' двенадцать триллионов';
  if chislo[2]+chislo[3]='13' then return_str:=return_str+' тринадцать триллионов';
  if chislo[2]+chislo[3]='14' then return_str:=return_str+' четырнадцать триллионов';
  if chislo[2]+chislo[3]='15' then return_str:=return_str+' пятнадцать триллионов';
  if chislo[2]+chislo[3]='16' then return_str:=return_str+' шестнадцать триллионов';
  if chislo[2]+chislo[3]='17' then return_str:=return_str+' семнадцать триллионов';
  if chislo[2]+chislo[3]='18' then return_str:=return_str+' восемнадцать триллионов';
  if chislo[2]+chislo[3]='19' then return_str:=return_str+' девятнадцать триллионов';

  if ((chislo[3]='1') and (chislo[2]<>'1')) then return_str:=return_str+' один триллион';
  if ((chislo[3]='2') and (chislo[2]<>'1')) then return_str:=return_str+' два триллиона';
  if ((chislo[3]='3') and (chislo[2]<>'1')) then return_str:=return_str+' три триллиона';
  if ((chislo[3]='4') and (chislo[2]<>'1')) then return_str:=return_str+' четыре триллиона';
  if ((chislo[3]='5') and (chislo[2]<>'1')) then return_str:=return_str+' пять триллионов';
  if ((chislo[3]='6') and (chislo[2]<>'1')) then return_str:=return_str+' шесть триллионов';
  if ((chislo[3]='7') and (chislo[2]<>'1')) then return_str:=return_str+' семь триллионов';
  if ((chislo[3]='8') and (chislo[2]<>'1')) then return_str:=return_str+' восемь триллионов';
  if ((chislo[3]='9') and (chislo[2]<>'1')) then return_str:=return_str+' девять триллионов';
  if ((chislo[3]='0') and (chislo[2]<>'1')) then return_str:=return_str+' триллионов';

  result:=return_str;
end;

function tysch(chislo:string):string;
var return_str:string;
begin
  if chislo[1]='9' then return_str:=' девятьсот';
  if chislo[1]='8' then return_str:=' восемььсот';
  if chislo[1]='7' then return_str:=' семьсот';
  if chislo[1]='6' then return_str:=' шестььсот';
  if chislo[1]='5' then return_str:=' пятььсот';
  if chislo[1]='4' then return_str:=' четыреста';
  if chislo[1]='3' then return_str:=' триста';
  if chislo[1]='2' then return_str:=' двести';
  if chislo[1]='1' then return_str:=' сто';
  if chislo[2]='2' then return_str:=return_str+' двадцать';
  if chislo[2]='3' then return_str:=return_str+' тридцать';
  if chislo[2]='4' then return_str:=return_str+' сорок';
  if chislo[2]='5' then return_str:=return_str+' пятьдесят';
  if chislo[2]='6' then return_str:=return_str+' шестьдесят';
  if chislo[2]='7' then return_str:=return_str+' семьдесят';
  if chislo[2]='8' then return_str:=return_str+' восемьдесят';
  if chislo[2]='9' then return_str:=return_str+' девяносто';
  if chislo[2]+chislo[3]='10' then return_str:=return_str+' десять тысяч';
  if chislo[2]+chislo[3]='11' then return_str:=return_str+' одиннадцать тысяч';
  if chislo[2]+chislo[3]='12' then return_str:=return_str+' двенадцать тысяч';
  if chislo[2]+chislo[3]='13' then return_str:=return_str+' тринадцать тысяч';
  if chislo[2]+chislo[3]='14' then return_str:=return_str+' четырнадцать тысяч';
  if chislo[2]+chislo[3]='15' then return_str:=return_str+' пятнадцать тысяч';
  if chislo[2]+chislo[3]='16' then return_str:=return_str+' шестнадцать тысяч';
  if chislo[2]+chislo[3]='17' then return_str:=return_str+' семнадцать тысяч';
  if chislo[2]+chislo[3]='18' then return_str:=return_str+' восемнадцать тысяч';
  if chislo[2]+chislo[3]='19' then return_str:=return_str+' девятнадцать тысяч';

  if ((chislo[3]='1') and (chislo[2]<>'1')) then return_str:=return_str+' одна тысяча';
  if ((chislo[3]='2') and (chislo[2]<>'1')) then return_str:=return_str+' две тысячи';
  if ((chislo[3]='3') and (chislo[2]<>'1')) then return_str:=return_str+' три тысячи';
  if ((chislo[3]='4') and (chislo[2]<>'1')) then return_str:=return_str+' четыре тысячи';
  if ((chislo[3]='5') and (chislo[2]<>'1')) then return_str:=return_str+' пять тысяч';
  if ((chislo[3]='6') and (chislo[2]<>'1')) then return_str:=return_str+' шесть тысяч';
  if ((chislo[3]='7') and (chislo[2]<>'1')) then return_str:=return_str+' семь тысяч';
  if ((chislo[3]='8') and (chislo[2]<>'1')) then return_str:=return_str+' восемь тысяч';
  if ((chislo[3]='9') and (chislo[2]<>'1')) then return_str:=return_str+' девять тысяч';
  if ((chislo[3]='0') and (chislo[2]<>'1')) then return_str:=return_str+' тысяч';

  result:=return_str;
end;

function millionch(chislo:string):string;
var return_str:string;
begin
  if chislo[1]='9' then return_str:=' девятьсот';
  if chislo[1]='8' then return_str:=' восемььсот';
  if chislo[1]='7' then return_str:=' семьсот';
  if chislo[1]='6' then return_str:=' шестььсот';
  if chislo[1]='5' then return_str:=' пятььсот';
  if chislo[1]='4' then return_str:=' четыреста';
  if chislo[1]='3' then return_str:=' триста';
  if chislo[1]='2' then return_str:=' двести';
  if chislo[1]='1' then return_str:=' сто';
  if chislo[2]='2' then return_str:=return_str+' двадцать';
  if chislo[2]='3' then return_str:=return_str+' тридцать';
  if chislo[2]='4' then return_str:=return_str+' сорок';
  if chislo[2]='5' then return_str:=return_str+' пятьдесят';
  if chislo[2]='6' then return_str:=return_str+' шестьдесят';
  if chislo[2]='7' then return_str:=return_str+' семьдесят';
  if chislo[2]='8' then return_str:=return_str+' восемьдесят';
  if chislo[2]='9' then return_str:=return_str+' девяносто';
  if chislo[2]+chislo[3]='10' then return_str:=return_str+' десять миллионов';
  if chislo[2]+chislo[3]='11' then return_str:=return_str+' одиннадцать миллионов';
  if chislo[2]+chislo[3]='12' then return_str:=return_str+' двенадцать миллионов';
  if chislo[2]+chislo[3]='13' then return_str:=return_str+' тринадцать миллионов';
  if chislo[2]+chislo[3]='14' then return_str:=return_str+' четырнадцать миллионов';
  if chislo[2]+chislo[3]='15' then return_str:=return_str+' пятнадцать миллионов';
  if chislo[2]+chislo[3]='16' then return_str:=return_str+' шестнадцать миллионов';
  if chislo[2]+chislo[3]='17' then return_str:=return_str+' семнадцать миллионов';
  if chislo[2]+chislo[3]='18' then return_str:=return_str+' восемнадцать миллионов';
  if chislo[2]+chislo[3]='19' then return_str:=return_str+' девятнадцать миллионов';

  if ((chislo[3]='1') and (chislo[2]<>'1')) then return_str:=return_str+' один миллион';
  if ((chislo[3]='2') and (chislo[2]<>'1')) then return_str:=return_str+' два миллиона';
  if ((chislo[3]='3') and (chislo[2]<>'1')) then return_str:=return_str+' три миллиона';
  if ((chislo[3]='4') and (chislo[2]<>'1')) then return_str:=return_str+' четыре миллиона';
  if ((chislo[3]='5') and (chislo[2]<>'1')) then return_str:=return_str+' пять миллионов';
  if ((chislo[3]='6') and (chislo[2]<>'1')) then return_str:=return_str+' шесть миллионов';
  if ((chislo[3]='7') and (chislo[2]<>'1')) then return_str:=return_str+' семь миллионов';
  if ((chislo[3]='8') and (chislo[2]<>'1')) then return_str:=return_str+' восемь миллионов';
  if ((chislo[3]='9') and (chislo[2]<>'1')) then return_str:=return_str+' девять миллионов';
  if ((chislo[3]='0') and (chislo[2]<>'1')) then return_str:=return_str+' миллионов';

  result:=return_str;
end;

function milliardch(chislo:string):string;
var return_str:string;
begin
  if chislo[1]='9' then return_str:=' девятьсот';
  if chislo[1]='8' then return_str:=' восемььсот';
  if chislo[1]='7' then return_str:=' семьсот';
  if chislo[1]='6' then return_str:=' шестььсот';
  if chislo[1]='5' then return_str:=' пятььсот';
  if chislo[1]='4' then return_str:=' четыреста';
  if chislo[1]='3' then return_str:=' триста';
  if chislo[1]='2' then return_str:=' двести';
  if chislo[1]='1' then return_str:=' сто';
  if chislo[2]='2' then return_str:=return_str+' двадцать';
  if chislo[2]='3' then return_str:=return_str+' тридцать';
  if chislo[2]='4' then return_str:=return_str+' сорок';
  if chislo[2]='5' then return_str:=return_str+' пятьдесят';
  if chislo[2]='6' then return_str:=return_str+' шестьдесят';
  if chislo[2]='7' then return_str:=return_str+' семьдесят';
  if chislo[2]='8' then return_str:=return_str+' восемьдесят';
  if chislo[2]='9' then return_str:=return_str+' девяносто';
  if chislo[2]+chislo[3]='10' then return_str:=return_str+' десять миллиардов';
  if chislo[2]+chislo[3]='11' then return_str:=return_str+' одиннадцать миллиардов';
  if chislo[2]+chislo[3]='12' then return_str:=return_str+' двенадцать миллиардов';
  if chislo[2]+chislo[3]='13' then return_str:=return_str+' тринадцать миллиардов';
  if chislo[2]+chislo[3]='14' then return_str:=return_str+' четырнадцать миллиардов';
  if chislo[2]+chislo[3]='15' then return_str:=return_str+' пятнадцать миллиардов';
  if chislo[2]+chislo[3]='16' then return_str:=return_str+' шестнадцать миллиардов';
  if chislo[2]+chislo[3]='17' then return_str:=return_str+' семнадцать миллиардов';
  if chislo[2]+chislo[3]='18' then return_str:=return_str+' восемнадцать миллиардов';
  if chislo[2]+chislo[3]='19' then return_str:=return_str+' девятнадцать миллиардов';

  if ((chislo[3]='1') and (chislo[2]<>'1')) then return_str:=return_str+' один миллиард';
  if ((chislo[3]='2') and (chislo[2]<>'1')) then return_str:=return_str+' два миллиарда';
  if ((chislo[3]='3') and (chislo[2]<>'1')) then return_str:=return_str+' три миллиарда';
  if ((chislo[3]='4') and (chislo[2]<>'1')) then return_str:=return_str+' четыре миллиарда';
  if ((chislo[3]='5') and (chislo[2]<>'1')) then return_str:=return_str+' пять миллиардов';
  if ((chislo[3]='6') and (chislo[2]<>'1')) then return_str:=return_str+' шесть миллиардов';
  if ((chislo[3]='7') and (chislo[2]<>'1')) then return_str:=return_str+' семь миллиардов';
  if ((chislo[3]='8') and (chislo[2]<>'1')) then return_str:=return_str+' восемь миллиардов';
  if ((chislo[3]='9') and (chislo[2]<>'1')) then return_str:=return_str+' девять миллиардов';
  if ((chislo[3]='0') and (chislo[2]<>'1')) then return_str:=return_str+' миллиардов';

  result:=return_str;
end;

function rublch(chislo:string):string;
var return_str:string;
begin
  if chislo[1]='9' then return_str:=' девятьсот';
  if chislo[1]='8' then return_str:=' восемььсот';
  if chislo[1]='7' then return_str:=' семьсот';
  if chislo[1]='6' then return_str:=' шестььсот';
  if chislo[1]='5' then return_str:=' пятььсот';
  if chislo[1]='4' then return_str:=' четыреста';
  if chislo[1]='3' then return_str:=' триста';
  if chislo[1]='2' then return_str:=' двести';
  if chislo[1]='1' then return_str:=' сто';
  if chislo[2]='2' then return_str:=return_str+' двадцать';
  if chislo[2]='3' then return_str:=return_str+' тридцать';
  if chislo[2]='4' then return_str:=return_str+' сорок';
  if chislo[2]='5' then return_str:=return_str+' пятьдесят';
  if chislo[2]='6' then return_str:=return_str+' шестьдесят';
  if chislo[2]='7' then return_str:=return_str+' семьдесят';
  if chislo[2]='8' then return_str:=return_str+' восемьдесят';
  if chislo[2]='9' then return_str:=return_str+' девяносто';
  if chislo[2]+chislo[3]='10' then return_str:=return_str+' десять рублей ';
  if chislo[2]+chislo[3]='11' then return_str:=return_str+' одиннадцать рублей ';
  if chislo[2]+chislo[3]='12' then return_str:=return_str+' двенадцать рублей ';
  if chislo[2]+chislo[3]='13' then return_str:=return_str+' тринадцать рублей ';
  if chislo[2]+chislo[3]='14' then return_str:=return_str+' четырнадцать рублей ';
  if chislo[2]+chislo[3]='15' then return_str:=return_str+' пятнадцать рублей ';
  if chislo[2]+chislo[3]='16' then return_str:=return_str+' шестнадцать рублей ';
  if chislo[2]+chislo[3]='17' then return_str:=return_str+' семнадцать рублей ';
  if chislo[2]+chislo[3]='18' then return_str:=return_str+' восемнадцать рублей ';
  if chislo[2]+chislo[3]='19' then return_str:=return_str+' девятнадцать рублей ';

  if ((chislo[3]='1') and (chislo[2]<>'1')) then return_str:=return_str+' один рубль';
  if ((chislo[3]='2') and (chislo[2]<>'1')) then return_str:=return_str+' два рубля';
  if ((chislo[3]='3') and (chislo[2]<>'1')) then return_str:=return_str+' три рубля';
  if ((chislo[3]='4') and (chislo[2]<>'1')) then return_str:=return_str+' четыре рубля';
  if ((chislo[3]='5') and (chislo[2]<>'1')) then return_str:=return_str+' пять рублей';
  if ((chislo[3]='6') and (chislo[2]<>'1')) then return_str:=return_str+' шесть рублей';
  if ((chislo[3]='7') and (chislo[2]<>'1')) then return_str:=return_str+' семь рублей';
  if ((chislo[3]='8') and (chislo[2]<>'1')) then return_str:=return_str+' восемь рублей';
  if ((chislo[3]='9') and (chislo[2]<>'1')) then return_str:=return_str+' девять рублей';
  if ((chislo[3]='0') and (chislo[2]<>'1')) then return_str:=return_str+' рублей';

  result:=return_str;
end;

function numtostring(chislo:string):string;
var return_str:string;
    rub,kop,rub_txt,kop_txt,tril,milliard,million,tys,rubl,propis,chis,chs:string;
    ch:real;

begin
 return_str:='';
 try strtofloat(chislo);
  ch:=strtofloat(chislo);
  rub:=inttostr(round(int(ch)));
  if pos(',',chislo)=0 then kop:='00';
  if pos(',',chislo)=length(chislo) then kop:='00';
  if ((pos(',',chislo)>0) and (pos(',',chislo)<length(chislo))) then kop:=copy(chislo,pos(',',chislo)+1,length(chislo)-(pos(',',chislo)));
  //if pos(',',chislo)>0 then kop:=copy(chislo,pos(',',chislo)+1,2);
//  kop:=floattostr(int(frac(strtofloat(chislo))*100));

  if kop[1]='2' then kop_txt:=' двадцать';
  if kop[1]='3' then kop_txt:=' тридцать';
  if kop[1]='4' then kop_txt:=' сорок';
  if kop[1]='5' then kop_txt:=' пятьдесят';
  if kop[1]='6' then kop_txt:=' шестьдесят';
  if kop[1]='7' then kop_txt:=' семьдесят';
  if kop[1]='8' then kop_txt:=' восемьдесят';
  if kop[1]='9' then kop_txt:=' девяносто';
  if kop[2]='0' then kop_txt:=kop_txt+' копеек ';
  if kop[2]='1' then kop_txt:=kop_txt+' одна копейка ';
  if kop[2]='2' then kop_txt:=kop_txt+' две копейки ';
  if kop[2]='3' then kop_txt:=kop_txt+' три копейки ';
  if kop[2]='4' then kop_txt:=kop_txt+' четыре копейки ';
  if kop[2]='5' then kop_txt:=kop_txt+' пять копеек ';
  if kop[2]='6' then kop_txt:=kop_txt+' шесть копеек ';
  if kop[2]='7' then kop_txt:=kop_txt+' семь копеек ';
  if kop[2]='8' then kop_txt:=kop_txt+' восемь копеек ';
  if kop[2]='9' then kop_txt:=kop_txt+' девять копеек ';
  if ((kop='0') or (kop='00')) then kop_txt:=' ноль копеек ';
  if kop='10' then kop_txt:=' деcять копеек ';
  if kop='11' then kop_txt:=' одиннадцать копеек ';
  if kop='12' then kop_txt:=' двенадцать копеек ';
  if kop='13' then kop_txt:=' тринадцать копеек ';
  if kop='14' then kop_txt:=' четырнадцать копеек ';
  if kop='15' then kop_txt:=' пятнадцать копеек ';
  if kop='16' then kop_txt:=' шестнадцать копеек ';
  if kop='17' then kop_txt:=' семнадцать копеек ';
  if kop='18' then kop_txt:=' восемнадцать копеек ';
  if kop='19' then kop_txt:=' девятнадцать копеек ';


  if length(rub)=15 then
   begin
     tril:=chislo[1]+chislo[2]+chislo[3];
     milliard:=chislo[4]+chislo[5]+chislo[6];
     million:=chislo[7]+chislo[8]+chislo[9];
     tys:=chislo[10]+chislo[11]+chislo[12];
     rubl:=chislo[13]+chislo[14]+chislo[15];
     rub_txt:=trilch(tril)+milliardch(milliard)+millionch(million)+tysch(tys)+rublch(rubl);
   end;
  if length(rub)=14 then
   begin
     tril:='0'+chislo[1]+chislo[2];
     milliard:=chislo[3]+chislo[4]+chislo[5];
     million:=chislo[6]+chislo[7]+chislo[8];
     tys:=chislo[9]+chislo[10]+chislo[11];
     rubl:=chislo[12]+chislo[13]+chislo[14];
     rub_txt:=trilch(tril)+milliardch(milliard)+millionch(million)+tysch(tys)+rublch(rubl);
   end;
  if length(rub)=13 then
   begin
     tril:='00'+chislo[1];
     milliard:=chislo[2]+chislo[3]+chislo[4];
     million:=chislo[5]+chislo[6]+chislo[7];
     tys:=chislo[8]+chislo[9]+chislo[10];
     rubl:=chislo[11]+chislo[12]+chislo[13];
     rub_txt:=trilch(tril)+milliardch(milliard)+millionch(million)+tysch(tys)+rublch(rubl);
   end;
  if length(rub)=12 then
   begin
     milliard:=chislo[1]+chislo[2]+chislo[3];
     million:=chislo[4]+chislo[5]+chislo[6];
     tys:=chislo[7]+chislo[8]+chislo[9];
     rubl:=chislo[10]+chislo[11]+chislo[12];
     rub_txt:=milliardch(milliard)+millionch(million)+tysch(tys)+rublch(rubl);
   end;
  if length(rub)=11 then
   begin
     milliard:='0'+chislo[1]+chislo[2];
     million:=chislo[3]+chislo[4]+chislo[5];
     tys:=chislo[6]+chislo[7]+chislo[8];
     rubl:=chislo[9]+chislo[10]+chislo[11];
     rub_txt:=milliardch(milliard)+millionch(million)+tysch(tys)+rublch(rubl);
   end;
  if length(rub)=10 then
   begin
     milliard:='00'+chislo[1];
     million:=chislo[2]+chislo[3]+chislo[4];
     tys:=chislo[5]+chislo[6]+chislo[7];
     rubl:=chislo[8]+chislo[9]+chislo[10];
     rub_txt:=milliardch(milliard)+millionch(million)+tysch(tys)+rublch(rubl);
   end;
  if length(rub)=9 then
   begin
     million:=chislo[1]+chislo[2]+chislo[3];
     tys:=chislo[4]+chislo[5]+chislo[6];
     rubl:=chislo[7]+chislo[8]+chislo[9];
     rub_txt:=millionch(million)+tysch(tys)+rublch(rubl);
   end;
 if length(rub)=8 then
   begin
     million:='0'+chislo[1]+chislo[2];
     tys:=chislo[3]+chislo[4]+chislo[5];
     rubl:=chislo[6]+chislo[7]+chislo[8];
     rub_txt:=millionch(million)+tysch(tys)+rublch(rubl);
   end;
 if length(rub)=7 then
   begin
     million:='00'+chislo[1];
     tys:=chislo[2]+chislo[3]+chislo[4];
     rubl:=chislo[5]+chislo[6]+chislo[7];
     rub_txt:=millionch(million)+tysch(tys)+rublch(rubl);
   end;
 if length(rub)=6 then
   begin
     tys:=chislo[1]+chislo[2]+chislo[3];
     rubl:=chislo[4]+chislo[5]+chislo[6];
     rub_txt:=tysch(tys)+rublch(rubl);
   end;
 if length(rub)=5 then
   begin
     tys:='0'+chislo[1]+chislo[2];
     rubl:=chislo[3]+chislo[4]+chislo[5];
     rub_txt:=tysch(tys)+rublch(rubl);
   end;
 if length(rub)=4 then
   begin
     tys:='00'+chislo[1];
     rubl:=chislo[2]+chislo[3]+chislo[4];
     rub_txt:=tysch(tys)+rublch(rubl);
   end;
 if length(rub)=3 then
   begin
     rubl:=chislo[1]+chislo[2]+chislo[3];
     rub_txt:=rublch(rubl);
   end;
 if length(rub)=2 then
   begin
     rubl:='0'+chislo[1]+chislo[2];
     rub_txt:=rublch(rubl);
   end;
 if length(rub)=1 then
   begin
     rubl:='00'+chislo[1];
     rub_txt:=rublch(rubl);
   end;
  propis:= rub_txt + kop_txt;
  chs:=propis[2];
  propis[2]:=AnsiUpperCase(chs)[1];
  if form1.CheckBox8.Checked then propis:= ' ('+propis+')';
  if form1.CheckBox4.Checked then chis:=rub+' руб. '+ kop + ' коп. ' else chis:=chislo +' руб.';

  return_str:=chis+ propis;

 except
  return_str:='ОШИБКА: Введено не число!!!';
 end;

 result:=return_str;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 Clipboard.AsText:=Memo1.text;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 form1.close;
 render;
end;

procedure TForm1.CheckBox7Click(Sender: TObject);
begin
 render;
end;

procedure TForm1.Edit1Change(Sender: TObject);
var i:integer;
    s:string;
begin
  s:=form1.Edit1.Text;
  for i := 1 to LENGTH(s) do if s[i]='.' then s[i]:=',';
  memo1.text:=numtostring(s);
  if CheckBox1.Checked then
   begin
     Clipboard.AsText:=Memo1.text;
   end;

end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Pos(',',edit1.Text) <> 0 then begin
if ((Length(edit1.Text)- Pos(',',edit1.Text) > 1)and (Key<>#08)) then Key := Chr(0);
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 render;
end;

end.
