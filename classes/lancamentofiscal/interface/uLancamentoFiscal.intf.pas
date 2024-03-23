unit uLancamentoFiscal.intf;

interface

type
  ILancamentoFiscal = interface
    ['{A9792B89-76F8-4822-B8D5-609542F96D15}']
    function GetLancamentoFiscalID: Integer;
    function GetCodigoObs         : Integer;
    function GetTexto             : string;
    function GetDataAlteracao     : TDateTime;

   procedure SetCodigoObs      (const Value: Integer);
    procedure SetTexto         (const Value: string);
    procedure SetDataAlteracao (const Value: TDateTime);

    property LancamentoFiscalID: Integer   read GetLancamentoFiscalID;
    property CodigoObs         : Integer   read GetCodigoObs            write SetCodigoObs;
    property Texto             : string    read GetTexto                write SetTexto;
    property DataAlteracao     : TDateTime read GetDataAlteracao        write SetDataAlteracao;
  end;

implementation

end.

