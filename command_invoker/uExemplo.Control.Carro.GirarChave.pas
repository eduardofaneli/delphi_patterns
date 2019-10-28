unit uExemplo.Control.Carro.GirarChave;

interface

uses
  uExemplo.Intf, uExemplo.Intf.Carro;

type
  TControlCarroGirarChave = class(TInterfacedObject, iCommand)
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

{ TControlCarroGirarChave }

constructor TControlCarroGirarChave.Create(Parent: iCarro);
begin
  FParent := Parent;
end;

destructor TControlCarroGirarChave.Destroy;
begin

  inherited;
end;

function TControlCarroGirarChave.Execute: iCommand;
begin
  Result := Self;
  FParent.girarChave();
end;

class function TControlCarroGirarChave.new(Parent: iCarro): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
