import * as Knex from 'knex';

export class person {
    
    //แสดงข้อมูลที่รอดำเนินการ
    getList(db: Knex) {
      return db('person');
    }

        //แสดงข้อมูลที่รอดำเนินการ
    getPersonCid(db: Knex,cid) {
      return db.select('CID', 'NAME', 'LNAME','SEX','TIMESTAMPDIFF(YEAR,BIRTH,NOW()) AS AGE').from('person')
            .where('CID',cid).limit(1);
      //return db('person').where('CID',cid).limit(1);
    }
    
}