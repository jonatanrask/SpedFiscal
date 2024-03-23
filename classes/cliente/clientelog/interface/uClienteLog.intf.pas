unit uClienteLog.intf;

interface

type
  IClienteLog = interface
    ['{DFC933C1-1B87-4E62-AD28-99574285BC76}']

    function GetClienteLogID      : Integer;
    function GetClienteID         : Integer;
    function GetDataAlteracao     : TDateTime;
    function GetNumeroCampo       : Integer;
    function GetConteudoAnterior  : string;

    procedure SetClienteLogID     (const Value: Integer);
    procedure SetClienteID        (const Value: Integer);
    procedure SetDataAlteracao    (const Value: TDateTime);
    procedure SetNumeroCampo      (const Value: Integer);
    procedure SetConteudoAnterior (const Value: string);

    property ClienteLogID     : Integer   read GetClienteLogID     write SetClienteLogId;
    property ClienteID        : Integer   read GetClienteID        write SetClienteID;
    property DataAlteracao    : TDateTime read GetDataAlteracao    write SetDataAlteracao;
    property NumeroCampo      : Integer   read GetNumeroCampo      write SetNumeroCampo;
    property ConteudoAnterior : string    read GetConteudoAnterior write SetConteudoAnterior;
  end;

implementation

end.

