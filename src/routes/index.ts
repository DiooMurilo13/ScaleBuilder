import { Router } from "express";
import { escalaRoute } from "./escala.routes";

const routes = Router();

routes.use("/", escalaRoute);

export { routes };
