unit uExemplo.Intf.Carro;

interface

type
  iCarro = interface
    ['{083FDA3F-4BFF-42DE-B00A-7730BAEB150B}']
    function destravar(): iCarro;
    function entrar(): iCarro;
    function girarChave(): iCarro;
    function obterSaida: string;
  end;

  iCarroView = interface
    ['{FFA3B1DC-BD0E-4D18-AEF4-AB1F33F29E60}']
    function partida(): iCarro;
  end;


implementation

end.
