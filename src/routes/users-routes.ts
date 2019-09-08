/// <reference path="../../typings.d.ts" />

import * as express from 'express';
import { Router, Request, Response } from 'express';
import * as HttpStatus from 'http-status-codes';
import bodyParser = require('body-parser');

//import class ที่ export มาจาก /models/users.ts
import { users } from '../models/users';

//สร้างตัวแปร
const userModel = new users();

const router: Router = Router();

router.use(bodyParser.json());
router.use(bodyParser.urlencoded({
    extended: true
}));

//จัดการข้อมูลในรูปแบบ JSON ให้ frontend เรียกใช้ข้อมูลได้
router.use(function(req, res, next){
    res.header("Access-COntrol-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});

router.get('/', async (req: Request, res: Response) => {
  let db = req.db;

  try {
    let rows = await userModel.getUser(db);
    res.send({ rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});


router.get('/:userid', async (req: Request, res: Response) => {
  let db = req.db;
  let userid = req.params.userid;
  try {
    let rows = await userModel.getJobNotify(db,userid);
    res.send({ rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});

router.get('/detailuser/:userid/:status', async (req: Request, res: Response) => {
  let db = req.db;
  let userid = req.params.userid;
  try {
    let rows = await userModel.getDetailUser(db,userid);
    res.send({ rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});

// save
router.post('/', async (req: Request, res: Response) => {
    let db = req.db;
    //let userName = req.body.username;
    console.log(req.body);
    try {
      let data: any = req.body;
    
      await userModel.save(db, data);
      res.send({ ok: true });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });
  
  //update user by ID
  router.put('/:id', async (req: Request, res: Response) => {
    let db = req.db;
    //
    let userId = req.params.id;
    
    try {
      let data: any = req.body;
      await userModel.update(db, userId, data);
      res.send({ ok: true });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });

  //delete user by ID
  router.delete('/:id', async (req: Request, res: Response) => {
    let db = req.db;
    let id = req.params.id;
    let data = req.body;
    try {
      await userModel.delete(db, id);
      res.send({ ok: true });
    } catch (error) {
      console.log(error);
      res.send({ ok: false, error: error.message });
    }
  
  });

export default router;