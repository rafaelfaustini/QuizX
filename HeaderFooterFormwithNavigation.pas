unit HeaderFooterFormwithNavigation;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Graphics, FMX.Forms, FMX.Dialogs, FMX.TabControl, System.Actions, FMX.ActnList,
  FMX.Objects, FMX.StdCtrls, FMX.Layouts, FMX.Controls.Presentation, FMX.ListBox,
  FMX.StdActns, FMX.MediaLibrary.Actions;

type
  THeaderFooterwithNavigation = class(TForm)
    ActionList1: TActionList;
    PreviousTabAction1: TPreviousTabAction;
    TitleAction: TControlAction;
    NextTabAction1: TNextTabAction;
    TopToolBar: TToolBar;
    btnBack: TSpeedButton;
    ToolBarLabel: TLabel;
    btnNext: TSpeedButton;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    BottomToolBar: TToolBar;
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    TabItem3: TTabItem;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    Image1: TImage;
    Button2: TButton;
    ActionList2: TActionList;
    ShowShareSheetAction1: TShowShareSheetAction;
    Button3: TButton;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Label4: TLabel;
    Label5: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure TitleActionUpdate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure ShowShareSheetAction1BeforeExecute(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HeaderFooterwithNavigation: THeaderFooterwithNavigation;
  score:integer;
  questoes:integer;
  HoraInicial: TDateTime;
  HoraDepois: TDateTime;
  media:integer;
implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.iPhone4in.fmx IOS}

procedure THeaderFooterwithNavigation.TitleActionUpdate(Sender: TObject);
begin
  if Sender is TCustomAction then
  begin
    if TabControl1.ActiveTab <> nil then
      TCustomAction(Sender).Text := TabControl1.ActiveTab.Text
    else
      TCustomAction(Sender).Text := '';
  end;
end;

procedure THeaderFooterwithNavigation.Button4Click(Sender: TObject);
const
Perguntas : array[1..6] of string = ('� uma caracter�stica presente na Carta de Caminha:','� correto afirmar que o Quinhentismo possu�a:','Qual texto marca o in�cio do per�odo da literatura quinhentista?','A �literatura jesu�ta�:','O principal autor da literatura jesu�tica no Quinhentismo Brasileiro �:','Sobre o Pe. Jos� de Anchieta, � correto afirmar que:');
Respostas : array[1..30]of string = ('A presen�a de contos fantasiosos.','A total imparcialidade do autor.','a presen�a do lirismo, por se tratar de uma cr�nica.','O car�ter descritivo.','A narra��o de atos grandiosos, tratando-se de um �pico.','2 vertentes: Nacionalista e Ultra-rom�ntica.','Uma �nica vertente, conhecida como indianista, sendo os �ndios o seu principal foco.','2 vertentes: a literatura informativa e a literatura jesu�tica.','Quinhentas vertentes, por isso � conhecido como "Quinhentismo"','3 vertentes: A vertente Classicista, vertente Barroca e vertente Arcadista.','Carta de Caminha.','Feitos de Mem S�.','A Cartilha dos Nativos.','Carta da Companhia.','Poema � Virgem.','Tinha car�ter informativo;','marca nossa matura��o cl�ssica;','visa � catequese do �ndio, � instru��o do colono e sua assist�ncia religiosa e moral;','est� a servi�o do poder real;','servia apenas para ensinar a l�ngua portuguesa aos �ndios.','Jos� de Anchieta.','Pero Vaz de Caminha.','Cam�es.','Manuel da N�brega.','Frei Vicente.','Era totalmente contra a prega��o da doutrina crist� para os �ndios.','Foi escritor de poemas de cunho religioso que ficaram famosos durante o per�odo barroco.','Suas obras s�o influenciadas pelo classicismo e pelo arcadismo.','Era � favor da escraviza��o dos povos ind�genas no Brasil.','foi um dos padres � catequizar �ndios e o principal autor jesu�ta no Quinhentismo brasileiro.');
Gabarito : array[1..6] of string = ('A narra��o de atos grandiosos, tratando-se de um �pico.','2 vertentes: a literatura informativa e a literatura jesu�tica.','Carta de Caminha.','Visa � catequese do �ndio, � instru��o do colono e sua assist�ncia religiosa e moral;','Jos� de Anchieta.','Foi um dos padres � catequizar �ndios e o principal autor jesu�ta no Quinhentismo brasileiro.');
var
x: integer;
score:integer;


begin
HoraDepois := Now;

x := 1 + Random(6);
label2.Text:= Perguntas[x];
radiobutton1.Text:= Respostas[x +(x-1)*4];
radiobutton2.Text:= Respostas[2*x + 3*(x-1)];
radiobutton3.Text:= Respostas[3*x+2*(x-1)];
radiobutton4.Text:= Respostas[4*x + (x-1)];
radiobutton5.Text:= Respostas[5*x];
questoes:= questoes+1;

if questoes <> 0 then
begin
media:= Round(HoraInicial + HoraDepois / 3);
label5.Text := InttoStr(media)

end;

if radiobutton1.Text = Respostas[x +(x-1)*4] then

begin
  score:= score+10
end;
if radiobutton2.Text = Respostas[2*x + 3*(x-1)] then

begin
  score:= score+10
end;
if radiobutton3.Text = Respostas[3*x+2*(x-1)] then

begin
  score:= score+10
end;
if radiobutton4.Text = Respostas[4*x + (x-1)] then

begin
  score:= score+10
end;
if radiobutton5.Text = Respostas[5*x] then

begin
  score:= score+10
end;


end;

procedure THeaderFooterwithNavigation.FormCreate(Sender: TObject);
begin
  { This defines the default active tab at runtime }
  TabControl1.First(TTabTransition.None);
end;

procedure THeaderFooterwithNavigation.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if (Key = vkHardwareBack) and (TabControl1.TabIndex <> 0) then
  begin
    TabControl1.First;
    Key := 0;
  end;
end;

procedure THeaderFooterwithNavigation.ShowShareSheetAction1BeforeExecute(
  Sender: TObject);
begin
ShowShareSheetAction1.TextMessage:= 'Eu estou usando o app X para android ! Agora posso estudar com as video-aulas e testar meu conhecimento ! Repondi'+' '+InttoStr(questoes)+' '+'quest�es em uma media de tempo de'+ ' '+ InttoStr(media) + ' '+ 'tive uma pontua��o de'+' '+ InttoStr(score);
end;

end.
