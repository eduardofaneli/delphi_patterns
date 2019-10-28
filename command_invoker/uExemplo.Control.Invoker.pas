unit uExemplo.Control.Invoker;

interface

uses
  uExemplo.Intf, System.Generics.Collections;

type

  TControlInvoker = class(TInterfacedObject, iInvoker)
  private
    FLista: TList<iCommand>;
    { private declarations }
  protected
    { protected declarations }
  public
    constructor Create;
    destructor Destroy; override;
    class function new(): iInvoker;
    function Add(Value: iCommand): iInvoker;
    function Execute(): iInvoker;
    { public declarations }
  end;


implementation

{ TControlInvoker }

function TControlInvoker.Add(Value: iCommand): iInvoker;
begin
  Result := Self;
  FLista.Add(Value);
end;

constructor TControlInvoker.Create;
begin
  FLista := TList<iCommand>.Create;
end;

destructor TControlInvoker.Destroy;
begin
  FLista.DisposeOf();
  inherited;
end;

function TControlInvoker.Execute: iInvoker;
var
  FCommand: iCommand;
begin
  Result := Self;
  for FCommand in Flista do
  begin
    FCommand.Execute();
  end;
end;

class function TControlInvoker.new: iInvoker;
begin
  Result := Self.Create;
end;

end.
