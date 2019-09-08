import * as Knex from 'knex';

export class report {

    getData(db: Knex) {
      return db('r506');
    }
   
    //getFullData By Kimnioym 20190405
    getDataPcu(db: Knex,hoscode,datestart,dateend){
      return db.raw(`
                SELECT *
                FROM r506 
                WHERE OFFICEID = ? AND DATESICK BETWEEN ? AND ?
            `,[hoscode,datestart,dateend]);
    }

    //getFullData By Kimnioym 20190405
    getDataAll(db: Knex,datestart,dateend){
      return db.raw(`
                SELECT *
                FROM r506 
                WHERE DATESICK BETWEEN ? AND ?
            `,[datestart,dateend]);
    }

    getHeadTable(db: Knex){
        return db.raw(`
            SELECT DISTINCT(COLUMN_NAME)
            FROM INFORMATION_SCHEMA.COLUMNS
            WHERE TABLE_NAME = 'r506' AND COLUMN_NAME != 'DATEMONTH'
            `);
    }

    sumPatient(db: Knex,year){
        return db.raw(`
            SELECT COUNT(r.IDCARD) AS total
            FROM r506 r 
            WHERE LEFT(r.DATESICK,4) = ? 
            `,[year]);
    }

    getMaxIcd10(db: Knex){
        return db.raw(`
            SELECT r.ICD10,COUNT(*) AS total
            FROM r506 r 
            GROUP BY r.ICD10
            ORDER BY total DESC
            LIMIT 1
            `);
    }

    getTop10(db: Knex){
        return db.raw(`
            SELECT r.ICD10,COUNT(*) AS total
            FROM r506 r 
            GROUP BY r.ICD10 
            ORDER BY total DESC
            LIMIT 10
            `);
    }

    getMaxPatientInAmpur(db: Knex){
        return db.raw(`
            SELECT LEFT(r.OFFICEID,4) AS ampur,COUNT(*) AS total
                FROM r506 r 
                GROUP BY LEFT(r.OFFICEID,4) 
                ORDER BY total DESC
                LIMIT 1
            `);
    }

    search(db: Knex,fname,cid){
        //return db.raw(`SELECT * FROM r506 r WHERE r.NAME LIKE` + "'%"+fname+"'%" + ` AND r.IDCARD = ?`,[cid]);
        return db('r506').where('NAME','like','%'+ fname + '%').andWhere('IDCARD',cid).orderBy('DATESICK','desc');
    }

    searchByfname(db: Knex,fname: any){
        return db('r506').where('NAME','like','%'+ fname + '%').orderBy('DATESICK','desc');
    }

    searchBycid(db: Knex,cid){
        return db.raw(`SELECT * FROM r506 r WHERE r.IDCARD = ?`,[cid]);
    }
    
}