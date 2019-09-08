import * as Knex from 'knex';

export class test {

  getData(db: Knex) {
    return db('test');
  }


}