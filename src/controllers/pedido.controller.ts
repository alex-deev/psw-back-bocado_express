import { Request, Response } from 'express';
import { Pedido } from '../entities/Pedido';
import { PedidoProducto } from '../entities/PedidoProducto';

export const getPedidos = async (req: Request, res: Response) => {
    try {
        const pedidos = await Pedido.find({
            relations: {
                pedidoProductos: { producto: true }
            }
        });
        console.log('pedidos: --->'), pedidos;
        return res.json(pedidos);
    } catch (error) {
        if (error instanceof Error) {
            return res.status(500).json({ message: error.message });
        }
    }
};

export const createPedido = async (req: Request, res: Response) => {
    try {
        const pedidoNuevo = new Pedido();
        Object.assign(pedidoNuevo, req.body);
        await pedidoNuevo.save();
    
        return res.json(pedidoNuevo);
    } catch (error) {
        if (error instanceof Error) {
            return res.status(500).json({ message: error.message });
        }
    }
};