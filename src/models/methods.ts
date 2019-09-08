import * as Knex from 'knex';

export class methods {

    getData(db: Knex) {
      return db('methods');
    }
    //บันทึกข้อมูล
    save(db: Knex, data: any) {
        return db('methods').insert(data);
    }
    //แก้ไขข้อมูล
    update(db: Knex, methodId: any, data: any) {
        return db('methods')
          .where('id', methodId)
          .update(data); //ส่ง data จาก routes/method-routests มาเป็นก้อนข้อมูล
    }
    //ลบข้อมูล
    delete(db: Knex, methodId: any) {
        return db('methods')
          .where('id', methodId)
          .del();
    }
    
}