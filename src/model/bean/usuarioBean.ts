import { IEscalaBean } from "./escalaBean";

export interface IUsuarioBean {
  id: number;
  nome: string;
  email: string;
  senha: String;
  escala: IEscalaBean[];
}
