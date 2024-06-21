import { DataSource } from 'typeorm';

export const AppDataSource = new DataSource ({
    type: 'mysql',
    host: 'localhost',
    port: 3306,
    username: 'psw',
    password: 'psw',
    database: 'psw',
    synchronize: true,
    // entities: []
});