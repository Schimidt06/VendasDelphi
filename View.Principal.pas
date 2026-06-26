unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, ShellAPI;

type
  TViewPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Movimentaes1: TMenuItem;
    Financeiro1: TMenuItem;
    Fiscal1: TMenuItem;
    Empresas1: TMenuItem;
    Cidades1: TMenuItem;
    Cidades2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Produtos1: TMenuItem;
    Vendas1: TMenuItem;
    Contasareceber1: TMenuItem;
    Configuraes1: TMenuItem;
    Configuraes2: TMenuItem;
    pnLogoBack: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    LbGit: TLabel;
    lbLinkedin: TLabel;
    procedure LbGitClick(Sender: TObject);
    procedure LbGitMouseEnter(Sender: TObject);
    procedure LbGitMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.LbGitClick(Sender: TObject);
begin
    ShellExecute(0, nil, PChar(TLabel(Sender).Caption), '', '', SW_ShowNormal);
end;

procedure TViewPrincipal.LbGitMouseEnter(Sender: TObject);
begin
   TLabel(Sender).Font.Color := clRed;
end;

procedure TViewPrincipal.LbGitMouseLeave(Sender: TObject);
begin
   TLabel(Sender).Font.Color := clWindowText;
end;

end.
