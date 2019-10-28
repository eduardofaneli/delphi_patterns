unit uExemplo.Control.Carro.Destravar;

interface

uses
  uExemplo.Intf, uExemplo.Intf.Carro;

type
  TControlCarroDestravar = class(TInterfacedObject, iCommand)
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

{ TControlCarroDestravar }

constructor TControlCarroDestravar.Create(Parent: iCarro);
begin
  FParent := Parent;
end;

destructor TControlCarroDestravar.Destroy;
begin

  inherited;
end;

function TControlCarroDestravar.Execute: iCommand;
begin
  Result := Self;
  FParent.destravar();
end;

class function TControlCarroDestravar.new(Parent: iCarro): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
