import { Router } from 'express';
import { getPedidos } from '../controllers/pedido.controller';

const router = Router();

router.get('/pedido', getPedidos);
export default router;