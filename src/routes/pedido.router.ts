import { Router } from 'express';
import { getPedidos } from '../controllers/pedido.controller';
import {createPedido } from '../controllers/pedido.controller'

const router = Router();

router.get('/pedido', getPedidos);
router.post('/pedido', createPedido)

export default router;