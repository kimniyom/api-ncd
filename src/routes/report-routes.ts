/// <reference path="../../typings.d.ts" />

import * as express from 'express';
import { Router, Request, Response } from 'express';
import * as HttpStatus from 'http-status-codes';
import bodyParser = require('body-parser');

//import class ที่ export มาจาก /models/sla.ts
import { report } from '../models/report';
const table = require('table').table;
const googleTrendsApi = require("google-trends-api");
const fs = require('fs');


//สร้างตัวแปร
const reportModel = new report();

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
    let rows = await reportModel.getData(db);
    res.send({ rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});

router.get('/getlist/:hoscode/:datestart/:dateend', async (req: Request, res: Response) => {
  let db = req.db;
  let hoscode = req.params.hoscode;
  let datestart = req.params.datestart;
  let dateend = req.params.dateend;
  try {
    let rows = await reportModel.getDataPcu(db,hoscode,datestart,dateend);
    res.send({ rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});

router.get('/getlistall/:datestart/:dateend', async (req: Request, res: Response) => {
  let db = req.db;
  let datestart = req.params.datestart;
  let dateend = req.params.dateend;
  try {
    let rows = await reportModel.getDataAll(db,datestart,dateend);
    res.send({ rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});

router.get('/headtable', async (req: Request, res: Response) => {
  let db = req.db;

  try {
    let rows = await reportModel.getHeadTable(db);
    res.send({ rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});

router.get('/sumpatient/:year', async (req: Request, res: Response) => {
  let db = req.db;
  let year = req.params.year;
  try {
    let rows = await reportModel.sumPatient(db,year);
    res.send({ rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});

router.get('/maxicd10', async (req: Request, res: Response) => {
  let db = req.db;
  //let year = req.params.year;
  try {
    let rows = await reportModel.getMaxIcd10(db);
    res.send({ rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});

router.get('/gettop10', async (req: Request, res: Response) => {
  let db = req.db;
  //let year = req.params.year;
  try {
    let rows = await reportModel.getTop10(db);
    res.send({ rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }
});

router.get('/getmaxpatientinampur', async (req: Request, res: Response) => {
  let db = req.db;
  //let year = req.params.year;
  try {
    let rows = await reportModel.getMaxPatientInAmpur(db);
    res.send({ rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});

router.get('/search/:fname/:cid', async (req: Request, res: Response) => {
  let db = req.db;
  let fname = req.params.fname;
  let cid = req.params.cid;
  try {
    let rows = await reportModel.search(db,fname,cid);
    res.send({ rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});

router.get('/searchbyname/:fname', async (req: Request, res: Response) => {
  let db = req.db;
  let fname = req.params.fname;
  try {
    let rows = await reportModel.searchByfname(db,fname);
    res.send({ rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});

router.get('/searchbycid/:cid', async (req: Request, res: Response) => {
  let db = req.db;
  let cid = req.params.cid;
  try {
    let rows = await reportModel.searchBycid(db,cid);
    res.send({ rows: rows });
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }

});


router.get('/export', async (req: Request, res: Response) => {
  let db = req.db;
  //let datestart = req.params.datestart;
  //let dateend = req.params.dateend;

  let datestart = '2019-01-01';
  let dateend = '2019-09-31';

  try {
    let rows = await reportModel.getDataAll(db,datestart,dateend);
    //let data = res.send(rows[0]);
    //let data = JSON.stringify(rows[0]);
    //var data = Object.values(JSON.parse(JSON.stringify(rows)))
    //console.log(data);
    /*
    fs.writeFile("./downloads/export2.txt", peopleArray,"utf8", function(err) {
      if(err) {
          return console.log(err);
      }
      console.log("The file was saved!");
    });
    */
   
  
  } catch (error) {
    console.log(error);
    res.send({ ok: false, error: error.message });
  }


  //et output = table(data);
  
/*
  fs.writeFile("./downloads/tabledata.txt", data,"utf8", function(err) {
      if(err) {
          return console.log(err);
      }

      console.log("The file was saved!");
  });
*/
});






  


export default router;