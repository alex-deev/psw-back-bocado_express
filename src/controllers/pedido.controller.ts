import { Request, Response } from 'express';
import { Pedido } from '../entities/Pedido';

export const getPedidos = async (req: Request, res: Response) => {
    try {
        const pedidos = await Pedido.find({
            relations: {
                tipoEntrega: true,
            },
        });
        console.log('pedidos: --->'), pedidos;
        return res.json(pedidos);
    } catch (error) {
        if (error instanceof Error) {
            return res.status(500).json({ message: error.message });
        }
    }
};