unit Frm.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TEstadoCivil = (Solteiro, casado, viuvo);

  TFormaPagamento = (Dinheiro, Cartao, Cheque, vale);

  TEnumConverter<T>= class
    class procedure AlimentaCombo(pList: TStrings);
  end;

  TFrmPrincipal = class(TForm)
    bntAlimentaComboFormaPaga: TButton;
    ComboBox1: TComboBox;
    btnAlimentaComboEstadoCivil: TButton;
    procedure bntAlimentaComboFormaPagaClick(Sender: TObject);
    procedure btnAlimentaComboEstadoCivilClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  System.TypInfo;

{$R *.dfm}
{ TEnumConverter<T> }

class procedure TEnumConverter<T>.AlimentaCombo(pList: TStrings);
var
  vValorDoEnumerado: String;
  i, vPosicao: Integer;

begin
  // Converte meu enumerado passado como parametro e alimenta a list do ComboBox;
  pList.Clear;
  i := 0;

  repeat
    vValorDoEnumerado := GetEnumName(TypeInfo(T), i);
    vPosicao := GetEnumValue(TypeInfo(T), vValorDoEnumerado);
    if vPosicao <> -1 then
    begin
      pList.Add(vValorDoEnumerado);
    end;

    Inc(i);

  until (vPosicao < 0);

end;

procedure TFrmPrincipal.bntAlimentaComboFormaPagaClick(Sender: TObject);
begin
  TEnumConverter<TFormaPagamento>.AlimentaCombo(ComboBox1.Items);
end;

procedure TFrmPrincipal.btnAlimentaComboEstadoCivilClick(Sender: TObject);
begin
  TEnumConverter<TEstadoCivil>.AlimentaCombo(ComboBox1.Items);
end;

end.
