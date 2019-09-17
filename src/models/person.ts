import * as Knex from 'knex';

export class person {
    
    //แสดงข้อมูลที่รอดำเนินการ
    getList(db: Knex) {
      return db('person');
    }

        //แสดงข้อมูลที่รอดำเนินการ
    getPersonCid(db: Knex,cid) {
      return db('person').where('CID',cid);
    }
    
}