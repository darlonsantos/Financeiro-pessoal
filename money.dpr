program money;

uses
  System.StartUpCopy,
  FMX.Forms,
  Form_Principal in 'Form_Principal.pas' {Frm_Principal},
  DataModule in 'DataModule.pas' {dm: TDataModule},
  FMX.Consts in 'consts\FMX.Consts.pas',
  Ugraficos in 'Ugraficos.pas' {frm_graficos};

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfrm_graficos, frm_graficos);
  Application.Run;
end.
