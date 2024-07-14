import { BaseEntity, Column, Entity, ManyToOne, PrimaryGeneratedColumn } from "typeorm";
import { Pedido } from "./Pedido";
import { Producto } from "./Producto";

@Entity()
export class PedidoProducto extends BaseEntity {

    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    cantidad: number;

    @ManyToOne(() => Pedido, pedido => pedido.pedidoProductos)
    pedido: Pedido;
  
    @ManyToOne(() => Producto, producto => producto.pedidoProductos)
    producto: Producto;

}