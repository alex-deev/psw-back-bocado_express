import { BaseEntity, Column, CreateDateColumn, Entity, JoinColumn, JoinTable, ManyToMany, ManyToOne, OneToMany, OneToOne, PrimaryGeneratedColumn } from "typeorm";
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
    
    @OneToMany(() => PedidoProducto, pedidoProducto => pedidoProducto.pedido)
    pedidoProductos: PedidoProducto[];
}