import { Router } from 'express';
import { getPedidos,createPedido } from '../controllers/pedido.controller';

const router = Router();

router.get('/pedido', getPedidos);
router.post('/pedido', createPedido)

export default router;