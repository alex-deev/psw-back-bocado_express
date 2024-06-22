import { DataSource } from 'typeorm';

export const AppDataSource = new DataSource ({
    // MySql DB from Avien
    type: 'mysql',
    host: 'mysql-bocado-express-bd-bocado-express.d.aivencloud.com',
    port: 18169,
    username: 'bocado',
    password: 'AVNS_qUddzBaFj9-q09cnB4R',
    database: 'bocado_express',
    synchronize: true,
    // entities: []
});