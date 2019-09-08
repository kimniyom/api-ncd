import * as Knex from 'knex';

export class Login {
  doCustomerLogin(db: Knex, username: string, passwords: string) {
    return db('users as c')
      .select('c.id', 'c.first_name', 'c.last_name', 'd.d_name', 'c.level','c.hos_code','HOSP_NAME')
      .leftJoin('departments as d', 'd.id', 'c.id_department')
      .leftJoin('hserv as h', 'c.hos_code', 'h.HOSP_CODE')
      .where('username', username)
      .where('passwords', passwords)
      .limit(1);
  }
/*
  doTechnicianLogin(db: Knex, username: string, password: string) {
    return db('technicians as t')
      .select('t.technician_id', 't.first_name', 't.last_name')
      .where('username', username)
      .where('password', password)
      .limit(1);
  }
  */
}