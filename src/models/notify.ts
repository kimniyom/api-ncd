import * as Knex from 'knex';

export class notify {

    getData(db: Knex) {
      return db('notify');
    }
    
    getGroupLine(db: Knex) {
      return db('notify').where("id",1);
    }
    
}