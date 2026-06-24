unit View.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.StdCtrls,
  ShellAPI;

type
  TViewPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Empresas1: TMenuItem;
    Cidades1: TMenuItem;
    Pessoas1: TMenuItem;
    N1: TMenuItem;
    Subgruposdeprodutos1: TMenuItem;
    Produtos1: TMenuItem;
    Movimentaes1: TMenuItem;
    Vendas1: TMenuItem;
    Financeiro1: TMenuItem;
    ContasaReceber1: TMenuItem;
    Fiscal1: TMenuItem;
    Configuraes1: TMenuItem;
    NFCe1: TMenuItem;
    procedure lbLinkedinClick(Sender: TObject);
    procedure lbLinkedinMouseEnter(Sender: TObject);
    procedure lbLinkedinMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.lbLinkedinClick(Sender: TObject);
begin
    ShellExecute(0, nil, PChar(TLabel(Sender).Caption), '', '', SW_ShowNormal);
end;

procedure TViewPrincipal.lbLinkedinMouseEnter(Sender: TObject);
begin
    TLabel (Sender) .Font.Color := clRed;
end;

procedure TViewPrincipal.lbLinkedinMouseLeave(Sender: TObject);
begin
    TLabel (Sender) .Font.Color := clWindowText;
end;

end.
