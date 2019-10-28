program command_invoker;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uExemplo.Intf in 'uExemplo.Intf.pas',
  uExemplo.Control.Carro in 'uExemplo.Control.Carro.pas',
  uExemplo.Intf.Carro in 'uExemplo.Intf.Carro.pas',
  uExemplo.Control.Invoker in 'uExemplo.Control.Invoker.pas',
  uExemplo.Control.Carro.Destravar in 'uExemplo.Control.Carro.Destravar.pas',
  uExemplo.Control.Carro.Entrar in 'uExemplo.Control.Carro.Entrar.pas',
  uExemplo.Control.Carro.GirarChave in 'uExemplo.Control.Carro.GirarChave.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
