import { BaseEntity, Column, Entity, ManyToOne, PrimaryGeneratedColumn } from "typeorm";
import { Producto } from "./Producto";

@Entity()
export class Estado extends BaseEntity {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    descripcion: string;

}