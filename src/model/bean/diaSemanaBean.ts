import { IEscalaBean } from "./escalaBean";

export interface IDiaSemanaBean {
  id: number;
  descricao: string;
  escala: IEscalaBean[];
}
