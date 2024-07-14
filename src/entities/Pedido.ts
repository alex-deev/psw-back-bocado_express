import { BaseEntity, Column, CreateDateColumn, Entity, OneToMany, PrimaryGeneratedColumn } from "typeorm";
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
    observacion: string;

    @Column()
    precioTotal: number; //se sugiere que el tipo de dato sea "decimal"

    @Column()
    tipoEntrega: string;

    @Column()
    nombreCliente: string;
    
    @OneToMany(() => PedidoProducto, pedidoProducto => pedidoProducto.pedido, {
        cascade: true //permite guardar todos los datos del pedido incluyendo los productos en la tabla intermedia pedidoProducto
    })
    pedidoProductos: PedidoProducto[];
}