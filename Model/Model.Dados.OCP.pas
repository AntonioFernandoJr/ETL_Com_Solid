unit Model.Dados.OCP;

interface

type
  IDados = interface
  ['{3F98552D-E757-4C56-96E6-E759736E9E1A}']
    function GetNome: String;
    procedure SetNome(const Value: String);
    function GetEmail: String;
    procedure SetEmail(const Value: String);
    function GetCPF: String;
    procedure SetCPF(const Value: String);

    property Nome: String read GetNome write SetNome;
    property Email: String read GetEmail write SetEmail;
    property CPF: String read GetCPF write SetCPF;
  end;

  TDados = class(TInterfacedObject, IDados)
  private
    FNome:  String;
    FEmail: String;
    FCPF: String;
    function GetNome: String;
    procedure SetNome(const Value: String);
    function GetEmail: String;
    procedure SetEmail(const Value: String);
    function GetCPF: String;
    procedure SetCPF(const Value: String);
  public
    property Nome: String read GetNome write SetNome;
    property Email: String read GetEmail write SetEmail;
    property CPF: String read GetCPF write SetCPF;

  end;

implementation

{ TDados }

function TDados.GetCPF: String;
begin
  Result := FCPF;
end;

function TDados.GetEmail: String;
begin
  Result := FEmail;
end;

function TDados.GetNome: String;
begin
  Result := FNome;
end;

procedure TDados.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TDados.SetEmail(const Value: String);
begin
  FEmail := Value;;
end;

procedure TDados.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
