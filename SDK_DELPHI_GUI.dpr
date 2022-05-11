program SDK_DELPHI_GUI;

uses
  Vcl.Forms,
  XDC3_DELPHI in 'XDC3_DELPHI.pas' {XRCTokens_Form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TXRCTokens_Form, XRCTokens_Form);
  Application.Run;
end.
