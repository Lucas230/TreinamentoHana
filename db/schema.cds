namespace treinamento.gestaodedespesas;

using {cuid} from '@sap/cds/common';

entity Areas : cuid {
    descricao : String(255);
}

entity Categorias : cuid {
    descricao : String(255);
}

entity Cargos : cuid {
    descricao : String(255);
}

entity Colaboradores : cuid {
    matricula : Integer;
    nome      : String(255);
    cargo     : Association to Cargos;
    area      : Association to Areas;
}

entity Despesas : cuid {
    descricao      : String(255);
    categoria      : Association to Categorias;
    dataLancamento : Date;
    daraAprovacao  : Date;
    valorTotal     : Double;
    justificativa  : String(255);
    colaborador    : Association to Colaboradores;
    aprovador      : Association to Colaboradores;
    status         : String enum {
        APROVADO;
        REPROVADO;
        PENDENTE;
        DEVOLVIDO;
    } default 'PENDENTE';
}
