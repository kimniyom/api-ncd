import * as Knex from 'knex';

export class person {
    
    //แสดงข้อมูลที่รอดำเนินการ
    getList(db: Knex) {
      return db('person');
    }

        //แสดงข้อมูลที่รอดำเนินการ
    getPersonCid(db: Knex,cid) {
      return db.raw(`
                SELECT CID,NAME,LNAME,SEX,TIMESTAMPDIFF(YEAR,BIRTH,NOW()) AS AGE FROM person WHERE CID = ? LIMIT 1
              `,[cid]);
      //return db('person').where('CID',cid).limit(1);
    }
    
}