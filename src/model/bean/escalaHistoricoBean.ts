import { IEscalaBean } from "./escalaBean";

export interface IEscalaHistoricoBean {
  id: number;
  descricao: string;
  escala: IEscalaBean;
  escalaId: number;
}
