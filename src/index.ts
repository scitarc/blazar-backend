import express, { Express, Request, Response } from 'express';
import * as dotenv from 'dotenv'
dotenv.config({path: __dirname + '/.env'})

dotenv.config();

const app: Express = express();
const port = process.env.PORT;

app.get('/', (req: Request, res: Response) => {
    res.send('[blazar] We are building something Amazing! See you later');
});

app.listen(port, () => {
    console.log(`⚡ [server]: Server is running at https://localhost:${port}`);
});