unit Ugraficos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMXTee.Engine,
  FMXTee.Procs, FMXTee.Chart, FMXTee.DBChart, FMXTee.Animations.Tools,
  FMXTee.Series, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  FGX.ProgressDialog;

type
  Tfrm_graficos = class(TForm)
    VertScrollBox1: TVertScrollBox;
    main_layout: TLayout;
    ToolBar1: TToolBar;
    btn_voltar: TSpeedButton;
    Image1: TImage;
    dsp_provider: TDataSetProvider;
    cds_graficos: TClientDataSet;
    ClientDataSet1ID_LANCAMENTO: TIntegerField;
    ClientDataSet1VALOR: TBCDField;
    ClientDataSet1DATA: TDateTimeField;
    ClientDataSet1DESCRICAO: TStringField;
    ClientDataSet1ID_CATEGORIA: TIntegerField;
    ClientDataSet1TIPO_LANCAMENTO: TStringField;
    ClientDataSet1CATEGORIA: TStringField;
    ClientDataSet1ICONE: TLargeintField;
    DBChart1: TDBChart;
    Series1: THorizBarSeries;
    ChartAnimation1: TTeeAnimationTool;
    btn_atualizar: TSpeedButton;
    lbl_graficos: TLabel;
    progress: TfgActivityDialog;
    procedure btn_voltarClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_graficos: Tfrm_graficos;

implementation

{$R *.fmx}
{$R *.iPhone4in.fmx IOS}

procedure Tfrm_graficos.btn_atualizarClick(Sender: TObject);
begin
 if cds_graficos.Active = false then
  begin
   progress.Show;
   Sleep(1000);
   progress.Title := 'Carregando...';
    progress.Message := 'Informações';
   cds_graficos.Active := true;
   progress.Hide;
  end;
    if cds_graficos.Active = true then
  begin
   progress.Show;
   Sleep(1000);
   progress.Title := 'Atualizando...';
   cds_graficos.Refresh;
   progress.Hide;
  end;




end;

procedure Tfrm_graficos.btn_voltarClick(Sender: TObject);
begin
close;
 
end;

end.
