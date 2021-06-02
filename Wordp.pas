{$i-}
unit Wordp;
interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ToolWin, ComCtrls, StdCtrls, StdActns, ActnList, Buttons, ExtCtrls,
  AppEvnts;
type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Layout1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    New1: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    SelAll1: TMenuItem;
    Format1: TMenuItem;
    FontStyle1: TMenuItem;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    Action1: TAction;
    PopupMenu1: TPopupMenu;
    Cut2: TMenuItem;
    Copy2: TMenuItem;
    Paste2: TMenuItem;
    SelAll2: TMenuItem;
    N4: TMenuItem;
    FontStyle2: TMenuItem;
    Undo1: TMenuItem;
    N3: TMenuItem;
    Undo2: TMenuItem;
    N5: TMenuItem;
    Splitter1: TSplitter;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Splitter2: TSplitter;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    SpeedButton4: TSpeedButton;
    SpeedButton8: TSpeedButton;
    richedit1: TRichEdit;
    Label1: TLabel;
    Label2: TLabel;
    ToolBar2: TToolBar;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Splitter6: TSplitter;
    Splitter8: TSplitter;
    Splitter9: TSplitter;
    SpeedButton12: TSpeedButton;
    ColorDialog1: TColorDialog;
    SpeedButton13: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Splitter5: TSplitter;
    Back1: TMenuItem;
    FontColor1: TMenuItem;
    N2: TMenuItem;
    SpeedButton17: TSpeedButton;
    Splitter7: TSplitter;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    EditDelete1: TEditDelete;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    Splitter11: TSplitter;
    Label3: TLabel;
    Action2: TAction;
    Delete2: TMenuItem;
    Delete1: TMenuItem;
    Timer1: TTimer;
    Label4: TLabel;
    Label5: TLabel;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    ProgressBar1: TProgressBar;
    N6: TMenuItem;
    UpperCase1: TMenuItem;
    LowerCase1: TMenuItem;
    Edit2: TMenuItem;
    N7: TMenuItem;
    LeftAl1: TMenuItem;
    Center1: TMenuItem;
    RightAl1: TMenuItem;
    Memo3: TMemo;
    Memo2: TMemo;
    procedure New1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SaveAs1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FontStyle1Click(Sender: TObject);
    procedure richedit1Change(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure Hakknda1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
    procedure ComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Delete2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure richedit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure richedit1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton17Click(Sender: TObject);
    procedure richedit1KeyPress(Sender: TObject; var Key: Char);
  private
  public
  end;
{---------------------------------------------------}
var
  Form1: TForm1;
  dosyaadi:string;
  cevap,yer:integer;
  cevap2,buyut:boolean;
  buyut2:byte=1;
  i:longint;
  c:char;
implementation

uses About;

{$R *.DFM}
procedure TForm1.New1Click(Sender: TObject);
begin
     if label1.caption='*' then memo1click(New1);
        if (cevap<>mrcancel)and(cevap2=true) then begin
                dosyaadi:='unnamed';
                Caption:='WordPad - '+dosyaadi;
                richedit1.Lines.Clear;
                label1.Caption:='';
                end;
end;

procedure TForm1.Open1Click(Sender: TObject);
begin
     if label1.caption='*' then memo1click(Open1);
     if (label1.caption='')or((cevap<>mrcancel)and(cevap2=true)) then
          if form1.opendialog1.Execute then begin
             dosyaadi:=opendialog1.FileName;
             Caption:='WordPad - '+dosyaadi;
             richedit1.Lines.LoadFromFile(dosyaadi);
             combobox1.Text:=richedit1.SelAttributes.Name;
             combobox2.Text:=inttostr(richedit1.SelAttributes.size);
             label1.Caption:='';
          end;
end;

procedure TForm1.Save1Click(Sender: TObject);
begin
     if dosyaadi='unnamed' then begin
        if savedialog1.Execute then begin
           dosyaadi:=savedialog1.FileName;
           richedit1.lines.SaveToFile(dosyaadi);
           form1.Caption:='WordPad - '+dosyaadi;
           label1.Caption:='';
           cevap2:=true;
        end else cevap2:=false;
     end else begin
     richedit1.lines.SaveToFile(dosyaadi);
     label1.Caption:='';
     end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:byte;parm:string;
begin
dosyaadi:='unnamed';
combobox1.Items:=screen.Fonts;
label5.Caption:=datetostr(date);
if not fileexists('c:\windows\word.cfg')then begin
memo3.Clear;
memo3.Lines.Add('Arial');
memo3.Lines.Add('14');
memo3.Lines.Add('0');
memo3.Lines.Add('0');
memo3.Lines.Add('70');
memo3.Lines.Add('255');
memo3.Lines.Add('255');
memo3.Lines.Add('0');
memo3.Lines.SaveToFile('word.cfg');
end;
if paramstr(1)<>'' then begin
   for i:=1 to paramcount do parm:=parm+paramstr(i);
   dosyaadi:=parm;
   form1.Caption:='WordPad - '+dosyaadi;
   form1.richedit1.Lines.LoadFromFile(dosyaadi);
end;
   memo2.Lines.LoadFromFile('word.cfg');
   richedit1.Font.name:=memo2.Lines[0];
   richedit1.Font.size:=strtoint(memo2.Lines[1]);
   richedit1.Color:=rgb(strtoint(memo2.lines[2]),
                        strtoint(memo2.lines[3]),
                        strtoint(memo2.lines[4]));
   richedit1.font.Color:=rgb(strtoint(memo2.lines[5]),
                        strtoint(memo2.lines[6]),
                        strtoint(memo2.lines[7]));
label3.Color:=richedit1.color;
label3.font.Color:=richedit1.Font.Color;
form1.combobox1.Text:=richedit1.selattributes.Name;
form1.combobox2.Text:=inttostr(richedit1.font.size);
label1.Caption:='';
end;

procedure TForm1.SaveAs1Click(Sender: TObject);
begin
     dosyaadi:='unnamed';
     Save1Click(SaveAs1);
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
     if label1.caption='*' then memo1click(Open1);
        if (cevap<>mrcancel)and(cevap2=true) then form1.close;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
     richedit1.SelAttributes.Name:=combobox1.Text;
end;

procedure TForm1.FontStyle1Click(Sender: TObject);
begin
     if fontdialog1.Execute then begin
        richedit1.SelAttributes.Name:=fontdialog1.Font.name;
        richedit1.SelAttributes.size:=fontdialog1.Font.size;
        richedit1.SelAttributes.color:=fontdialog1.Font.color;
        label3.font.Color:=richedit1.selattributes.Color;
        richedit1.SelAttributes.style:=fontdialog1.Font.style;
        combobox1.Text:=richedit1.SelAttributes.Name;
        combobox2.Text:=inttostr(richedit1.SelAttributes.Size);
        end;
end;

procedure TForm1.richedit1Change(Sender: TObject);
begin
     label1.Caption:='*';
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
     if speedbutton9.down then
     richedit1.SelAttributes.Style:=richedit1.SelAttributes.Style+[fsbold]
     else
     richedit1.SelAttributes.Style:=richedit1.SelAttributes.Style-[fsbold];
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
     if speedbutton10.down then
     richedit1.SelAttributes.Style:=richedit1.SelAttributes.Style+[fsitalic]
     else
     richedit1.SelAttributes.Style:=richedit1.SelAttributes.Style-[fsitalic];
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
begin
     if speedbutton11.down then
     richedit1.SelAttributes.Style:=richedit1.SelAttributes.Style+[fsunderline]
     else
     richedit1.SelAttributes.Style:=richedit1.SelAttributes.Style-[fsunderline];
end;

procedure TForm1.Hakknda1Click(Sender: TObject);
begin
aboutform.showmodal;
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
begin
if colordialog1.Execute then
richedit1.selattributes.Color:=colordialog1.Color;
label3.font.Color:=richedit1.selattributes.Color;
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
begin
if colordialog1.Execute then
richedit1.Color:=colordialog1.Color;
label3.Color:=richedit1.Color;
end;

procedure TForm1.SpeedButton14Click(Sender: TObject);
begin
     SpeedButton14.Down:=true;
     richedit1.paragraph.Alignment:=taleftjustify;
end;

procedure TForm1.SpeedButton15Click(Sender: TObject);
begin
SpeedButton15.Down:=true;
richedit1.paragraph.Alignment:=tacenter;
end;

procedure TForm1.SpeedButton16Click(Sender: TObject);
begin
SpeedButton16.Down:=true;
richedit1.paragraph.Alignment:=tarightjustify;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     cevap2:=false;
if label1.caption='*' then memo1click(form1);
   if (label1.caption='*')and(cevap<>mrno)and(cevap2=false)
      then action:=canone
      else begin
memo2.Clear;
memo2.Lines.add(combobox1.Text);
memo2.Lines.add(combobox2.Text);
memo2.Lines.add(inttostr(getrvalue(richedit1.color)));
memo2.Lines.add(inttostr(getgvalue(richedit1.color)));
memo2.Lines.add(inttostr(getbvalue(richedit1.color)));
memo2.Lines.add(inttostr(getrvalue(richedit1.selattributes.color)));
memo2.Lines.add(inttostr(getgvalue(richedit1.selattributes.color)));
memo2.Lines.add(inttostr(getbvalue(richedit1.SelAttributes.color)));
memo2.lines.SaveToFile('word.cfg');
end;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
richedit1.SelAttributes.Size:=strtoint(combobox2.text);
end;

procedure TForm1.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
richedit1.SetFocus;
end;

procedure TForm1.SpeedButton19Click(Sender: TObject);
begin
if mryes=messagedlg('This process will replace the properties of the text you have selected such as color, shape, size with the properties of the first character. Do you want to continue?',mtwarning,[mbyes]+[mbno],0)
then richedit1.SelText:=ansiuppercase(richedit1.seltext);
end;

procedure TForm1.SpeedButton18Click(Sender: TObject);
begin
if mryes=messagedlg('This process will replace the properties of the text you have selected such as color, shape, size with the properties of the first character. Do you want to continue?',mtwarning,[mbyes]+[mbno],0)
then richedit1.SelText:=ansilowercase(richedit1.seltext);
end;

procedure TForm1.Memo1Click(Sender: TObject);
begin
cevap:=messagedlg('Do you want to save the changes?',
mtConfirmation, [mbYes, mbNo,mbCancel], 0);
if cevap=mryes then Save1Click(New1);
if cevap=mrno then cevap2:=true;
end;

procedure TForm1.ComboBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
richedit1.SetFocus;
end;

procedure TForm1.ComboBox1Click(Sender: TObject);
begin
richedit1.SetFocus;
end;

procedure TForm1.Delete1Click(Sender: TObject);
begin
if richedit1.text[richedit1.selstart+1]=#13 then begin
richedit1.sellength:=2;
richedit1.ClearSelection;
end;
end;

procedure TForm1.Delete2Click(Sender: TObject);
begin
if richedit1.SelText='' then richedit1.SelLength:=1;
richedit1.ClearSelection
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
label4.Caption:=timetostr(time);
end;

procedure TForm1.Label5Click(Sender: TObject);
begin
richedit1.seltext:=' '+label5.Caption+' ';
end;

procedure TForm1.Label4Click(Sender: TObject);
begin
richedit1.seltext:=' '+label4.Caption+' ';
end;

procedure TForm1.richedit1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var s:TShiftState;k:Word;
begin
richedit1KeyUp(richedit1,k,s);
end;

procedure TForm1.SpeedButton17Click(Sender: TObject);
begin
buyut:=true;
progressbar1.show;
yer:=richedit1.selstart;
progressbar1.Max:=richedit1.GetTextLen;
for i:=1 to richedit1.GetTextLen do begin
    if buyut then begin
       richedit1.SelStart:=i-1;
       richedit1.SelLength:=1;
       if richedit1.selText='�'then richedit1.selText:='I'
          else richedit1.selText:=ansiuppercase(richedit1.selText);
    end;

       if not(richedit1.Text[i] in[#32,#13,#10])then
        if richedit1.Text[i]in['.',';','?','!',':']then begin
           buyut:=true;
           richedit1.SelStart:=i;
           richedit1.selText:=' ';
        end else buyut:=false;
progressbar1.Position:=i;
end;
progressbar1.hide;
richedit1.selstart:=yer;
end;

function harf(kar:char):boolean;
begin
if kar in[#65..#90,#97..#122,#8,'�','�','�','�','�','�','�','�','�','�','�','�']
   then harf:=true else harf:=false;
end;

procedure TForm1.richedit1KeyPress(Sender: TObject; var Key: Char);
begin
if (buyut2=1)and(not(harf(key)))then begin
  i:=richedit1.SelStart;
  if (i>0)and(not(richedit1.Text[i]in['.',';','?','!',':']))then begin
    while (harf(richedit1.Text[i]))and(i>0)do dec(i);

    yer:=richedit1.Selstart;
    richedit1.Selstart:=i; richedit1.Sellength:=1;
    if richedit1.SelText='�'then richedit1.SelText:='I'
       else richedit1.SelText:=ansiuppercase(richedit1.seltext);
    richedit1.Selstart:=richedit1.Selstart-1;
    richedit1.SelText:=' ';
    richedit1.Selstart:=yer+1;
    buyut2:=0;
  end;
end;
if key in['.',';','?','!',':'] then buyut2:=1;
end;

procedure TForm1.richedit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if combobox1.Text<>richedit1.selattributes.Name then
   combobox1.Text:=richedit1.selattributes.Name;
if combobox2.Text<>inttostr(richedit1.selattributes.size) then
   combobox2.Text:=inttostr(richedit1.selattributes.size);
if label3.font.Color<>richedit1.selattributes.Color then
   label3.font.Color:=richedit1.selattributes.Color;
if fsbold in richedit1.selattributes.Style then speedbutton9.Down:=true
   else speedbutton9.Down:=false;
if fsitalic in richedit1.selattributes.Style then speedbutton10.Down:=true
   else speedbutton10.Down:=false;
if fsunderline in richedit1.selattributes.Style  then speedbutton11.Down:=true
   else speedbutton11.Down:=false;
if key=46 then Delete1click(sender);
end;

end.
