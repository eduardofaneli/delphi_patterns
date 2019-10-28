unit uExemplo.Control.Carro.Entrar;

interface

uses
  uExemplo.Intf, uExemplo.Intf.Carro;

type
  TControlCarroEntrar = class(TInterfacedObject, iCommand)
  private
    FParent: iCarro;
    { private declarations }
  protected
    { protected declarations }
  public
    constructor Create(Parent: iCarro);
    destructor Destroy; override;
    class function new(Parent: iCarro): iCommand;
    function Execute(): iCommand;
    { public declarations }
  end;

implementation

{ TControlCarroEntrar }

constructor TControlCarroEntrar.Create(Parent: iCarro);
begin
  FParent := Parent;
end;

destructor TControlCarroEntrar.Destroy;
begin

  inherited;
end;

function TControlCarroEntrar.Execute: iCommand;
begin
  Result := Self;
  FParent.entrar();
end;

class function TControlCarroEntrar.new(Parent: iCarro): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
