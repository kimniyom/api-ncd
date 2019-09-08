import * as Knex from 'knex';

export class office {
    
    //แสดงข้อมูลที่รอดำเนินการ
    getList(db: Knex) {
      //return db('co_office');
      return db('hserv');
    }
}