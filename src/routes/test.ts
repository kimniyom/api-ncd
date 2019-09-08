/// <reference path="../../typings.d.ts" />

import * as express from 'express';
import { Router, Request, Response } from 'express';
import * as HttpStatus from 'http-status-codes';

import { test } from '../models/test';
const testModel = new test();

const router: Router = Router();

router.get('/getdata', async (req: Request, res: Response) => {
  let db = req.db;

  try {
    let rows = await testModel.getData(db);
    res.send({ ok: true, rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});

export default router;