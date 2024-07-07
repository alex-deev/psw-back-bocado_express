import { Request, Response } from 'express';
import { Producto } from '../entities/Producto';

export const getProductos = async (req: Request, res: Response) => {
    try {
        const productos = await Producto.find({
            relations: {
                estado: true,
            },
        });
        console.log('productos: --->'), productos;   //se sugiere console.log('productos: --->', productos);
        return res.json(productos);
    } catch (error) {
        if (error instanceof Error) {
            return res.status(500).json({ message: error.message });
        }
    }
};