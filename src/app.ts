import express from 'express';
import morgan from 'morgan';
import cors from 'cors';
import pedidoRoutes from './routes/pedido.router';
import productoRoutes from './routes/producto.router';

const app = express();

app.use(morgan('dev'));
app.use(cors());
app.use(express.json());

app.use('/api', pedidoRoutes);
app.use('/api', productoRoutes);

export default app;