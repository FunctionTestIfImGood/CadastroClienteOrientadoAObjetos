unit TControllerCliente;

interface
uses
 IController, IClientesFactory;
type
  TControllerClientes = class(TInterfacedObject, IControllerCliente)
    private
      procedure ValidarNome(Nome: String);
      procedure ValidarCPF(CPF: String);
      procedure ValidarEndereco(Endereco: String);
      function GetInstancia(Value: Integer): ICliInstance;
      procedure Gravar;
    public
      class function New: IControllerCliente;
      constructor Create;
      destructor Destroy; override;
  end;

implementation
uses
  IModelCliente,
  TModelCliente,
  TClienteFactory,
  System.SysUtils,
  Vcl.Dialogs;

{ TControllerClientes }

constructor TControllerClientes.Create;
begin

end;

destructor TControllerClientes.Destroy;
begin

  inherited;
end;

function TControllerClientes.GetInstancia(Value: Integer): ICliInstance;
begin
  Result := TClientesFactory.New.GetInstancia(Value);
end;

procedure TControllerClientes.Gravar;
begin

end;

class function TControllerClientes.New: IControllerCliente;
begin
  Result := (Self.Create);
end;

procedure TControllerClientes.ValidarCPF(CPF: String);
var
  oModelCliente: IModelClientes;
begin
  oModelCliente := TModelClientes.New;
  oModelCliente.ValidarCPF(CPF);
end;

procedure TControllerClientes.ValidarEndereco(Endereco: String);
var
  oModelCliente: IModelClientes;
begin
  oModelCliente := TModelClientes.New;
  oModelCliente.ValidarEndereco(Endereco);
end;

procedure TControllerClientes.ValidarNome(Nome: String);
var
  oModelCliente: IModelClientes;
begin;
  oModelCliente := TModelClientes.New;
  oModelCliente.ValidarNome(Nome);
end;

end.
