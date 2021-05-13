using {treinamento.gestaodedespesas as gestaodedespesas} from '../db/schema.cds';

@path: '/api'
service MainService {

    entity AreasSet         as projection on gestaodedespesas.Areas;
    entity CategoriasSet    as projection on gestaodedespesas.Categorias;
    entity CargosSet        as projection on gestaodedespesas.Cargos;
    entity ColaboradoresSet as projection on gestaodedespesas.Colaboradores;
    entity DespesasSet      as projection on gestaodedespesas.Despesas;

}
