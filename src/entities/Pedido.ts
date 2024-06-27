import { BaseEntity, Column, CreateDateColumn, Entity, JoinColumn, JoinTable, ManyToMany, ManyToOne, OneToMany, OneToOne, PrimaryGeneratedColumn } from "typeorm";
import { TipoEntrega } from "./TipoEntrega";
import { Producto } from "./Producto";
import { PedidoProducto } from "./PedidoProducto";

@Entity()
export class Pedido extends BaseEntity {

    @PrimaryGeneratedColumn()
    id: number;

    @CreateDateColumn()
    fechaHora: Date;

    @Column()
    direccionEnvio: string;

    @Column()
    telefono: string;

    @Column()
    precioTotal: number;

    @ManyToOne(() => TipoEntrega, { eager: true })
    tipoEntrega: TipoEntrega;

    @Column()
    nombreCliente: string;
    
    @OneToMany(() => PedidoProducto, pedidoProducto => pedidoProducto.pedido)
    pedidoProductos: PedidoProducto[];
}