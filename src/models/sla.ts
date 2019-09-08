import * as Knex from 'knex';

export class sla {

    getData(db: Knex) {
      return db('sla');
    }
    //บันทึกข้อมูล
    save(db: Knex, data: any) {
        return db('sla').insert(data);
    }
    //แก้ไขข้อมูล
    update(db: Knex, slaId: any, data: any) {
        return db('sla')
          .where('id', slaId)
          .update(data); //ส่ง data จาก routes/sla-routests มาเป็นก้อนข้อมูล
    }
    //ลบข้อมูล
    delete(db: Knex, slaId: any) {
        return db('sla')
          .where('id', slaId)
          .del();
    }
    
}