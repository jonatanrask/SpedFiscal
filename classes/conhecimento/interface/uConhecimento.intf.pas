unit uConhecimento.intf;

interface

type
  IConhecimento = interface
    ['{BF92FFEB-D1FB-468C-8974-1348780AB865}']
    function GetConhecimentoID     : Integer;
    function GetCTE                : string;
    function GetEmpresaID          : Integer;
    function GetClienteID          : Integer;
    function GetItemID             : Integer;
    function GetDocumentoFiscalID  : Integer;
    function GetLancamentoFiscalID : Integer;
    function GetDataAlteracao      : TDateTime;

    procedure SetCTE               (const Value: string);
    procedure SetEmpresaID         (const Value: Integer);
    procedure SetClienteID         (const Value: Integer);
    procedure SetItemID            (const Value: Integer);
    procedure SetDocumentoFiscalID (const Value: Integer);
    procedure SetLancamentoFiscalID(const Value: Integer);

    property ConhecimentoID     : Integer   read GetConhecimentoID;
    property CTE                : string    read GetCTE               write SetCTE;
    property EmpresaID          : Integer   read GetEmpresaID         write SetEmpresaID;
    property ClienteID          : Integer   read GetClienteID         write SetClienteID;
    property ItemID             : Integer   read GetItemID            write SetItemID;
    property DocumentoFiscalID  : Integer   read GetDocumentoFiscalID write SetDocumentoFiscalID;
    property LancamentoFiscalID : Integer   read GetLancamentoFiscalID write SetLancamentoFiscalID;
    property DataAlteracao      : TDateTime read GetDataAlteracao;
  end;

implementation

end.

