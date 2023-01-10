import { IDiaSemanaBean } from "./diaSemanaBean";
import { IEscalaHistoricoBean } from "./escalaHistoricoBean";
import { IUsuarioBean } from "./usuarioBean";

export interface IEscalaBean {
  id: number;
  nomeEscala: string;
  usuario: IUsuarioBean[];
  escalaHistorico: IEscalaHistoricoBean[];
  dataInicio: Date;
  diaSemana: IDiaSemanaBean[];
}
