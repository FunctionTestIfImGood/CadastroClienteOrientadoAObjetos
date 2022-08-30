unit IController;

interface
uses
 IClientesFactory, IDTOCliente;
type
  IControllerCliente = interface
    ['{C6C2CC56-7372-4C15-98C7-3D4D438E30F8}']
    procedure ValidarNome(Nome: String);
    procedure ValidarCPF(CPF: String);
    procedure ValidarEndereco(Endereco: String);
    function GetInstancia(Value: Integer): ICliInstance;
    procedure Gravar;
  end;

implementation

end.
