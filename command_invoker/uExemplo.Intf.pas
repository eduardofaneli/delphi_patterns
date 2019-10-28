unit uExemplo.Intf;

interface

type
  iCommand = interface
      ['{C7398233-1DCC-4867-B2D3-051C01A2888A}']
      function Execute(): iCommand;
  end;

  iInvoker = interface
    ['{FBAD7942-CD77-413F-9BCA-48C96FA98CA4}']
    function Add(Value: iCommand): iInvoker;
    function Execute(): iInvoker;
  end;

implementation

end.
