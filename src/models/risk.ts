import * as Knex from 'knex';

export class risk {

    getData(db: Knex) {
      return db('risks');
    }
    //บันทึกข้อมูล
    save(db: Knex, data: any) {
        return db('risks').insert(data);
    }
    //แก้ไขข้อมูล
    update(db: Knex, id: any, data: any) {
        return db('risks')
          .where('id', id)
          .update(data); //ส่ง data จาก routes/equipments-routests มาเป็นก้อนข้อมูล
    }
    //ลบข้อมูล
    delete(db: Knex, id: any) {
        return db('risks')
          .where('id', id)
          .del();
    }

   
}