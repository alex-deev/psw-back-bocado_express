import { BaseEntity, Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity()
export class Estado extends BaseEntity {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    descripcion: string;

}