unit uCentroCusto.intf;

interface

type
  ICentroCusto = interface
    ['{C6B83C73-82A1-49D5-BADE-C7DDAE06CD62}']

    function GetCentroCustoID         : Integer;
    function GetCodigoCentroCustos    : string;
    function GetNomeCentroCustos      : string;
    function GetDataAlteracao         : TDateTime;

    procedure SetCodigoCentroCustos   (const Value: string);
    procedure SetNomeCentroCustos     (const Value: string);
    procedure SetDataAlteracao        (const Value: TDateTime);

    property CentroCustoID          : Integer   read GetCentroCustoID;
    property CodigoCentroCustos     : string    read GetCodigoCentroCustos    write SetCodigoCentroCustos;
    property NomeCentroCustos       : string    read GetNomeCentroCustos      write SetNomeCentroCustos;
    property DataAlteracao          : TDateTime read GetDataAlteracao         write SetDataAlteracao;
  end;

implementation

end.

