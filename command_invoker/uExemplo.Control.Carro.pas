unit uExemplo.Control.Carro;

interface

uses
  uExemplo.Intf.Carro, System.Classes;

type
  TControlCarro = class(TInterfacedObject, iCarro, iCarroView)
  private
    FSaida: TStrings;
    { private declarations }
  protected
    { protected declarations }
  public
    constructor Create;
    destructor Destroy; override;
    class function new(): iCarroView;
    function destravar(): iCarro;
    function entrar(): iCarro;
    function girarChave(): iCarro;
    function partida(): iCarro;
    function obterSaida: string;

    { public declarations }
  end;

implementation

uses
  uExemplo.Control.Invoker,
  uExemplo.Control.Carro.Destravar,
  uExemplo.Control.Carro.Entrar,
  uExemplo.Control.Carro.GirarChave, System.SysUtils;

{ TControlCarro }

constructor TControlCarro.Create;
begin
  FSaida := TStringList.Create;
  FSaida.Clear;
end;

function TControlCarro.destravar: iCarro;
begin
  try
    Result := Self;
    raise Exception.Create('Controle não está destravando');
    FSaida.Add('Destravando o carro');
  except
    on E: Exception do
      raise;

  end;

end;

destructor TControlCarro.Destroy;
begin
  FSaida.DisposeOf();
  inherited;
end;

function TControlCarro.entrar: iCarro;
begin
  try
    Result := Self;
    FSaida.Add('Entrando no carro');
  except
    on E: Exception do
      raise;
  end;
end;

function TControlCarro.girarChave: iCarro;
begin
  try
    Result := Self;
    FSaida.Add('Girando a chave');
  except
    on E: Exception do
      raise

  end;
end;

class function TControlCarro.new: iCarroView;
begin
  Result := Self.Create;
end;

function TControlCarro.obterSaida: string;
begin
  Result := FSaida.Text;
end;

function TControlCarro.partida: iCarro;
begin
  Result := Self;
  try
    TControlInvoker.new()
      .Add(TControlCarroDestravar.new(Self))
      .Add(TControlCarroEntrar.new(Self))
      .Add(TControlCarroGirarChave.new(Self))
      .Execute();
  except
    on E: Exception do
      FSaida.Add(E.Message);
  end;
end;

end.
