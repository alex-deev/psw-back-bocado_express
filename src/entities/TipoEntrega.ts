import { BaseEntity, Collection, Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity()
export class TipoEntrega extends BaseEntity {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    descripcion: string;
}