import { BaseEntity, Column, Entity, ManyToOne, OneToMany, PrimaryGeneratedColumn } from "typeorm";
import { Estado } from "./Estado";
import { PedidoProducto } from "./PedidoProducto";

@Entity() // se puede pasar como parametro el nombre de tabla ej: 'usersTable'
export class Producto extends BaseEntity {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    nombre: string;

    @Column()
    descripcion: string;

    @Column('decimal', { precision: 10, scale: 2 })
    precio: number; //se sugiere que el tipo de dato sea "decimal"

    @Column()
    imagen: string;

    @ManyToOne(() => Estado, { eager: true })
    estado: Estado;

    @OneToMany(() => PedidoProducto, pedidoProducto => pedidoProducto.producto)
    pedidoProductos: PedidoProducto[];
}