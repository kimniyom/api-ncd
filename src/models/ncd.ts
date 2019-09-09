import * as Knex from 'knex';

export class ncd {
    
    //แสดงข้อมูลที่รอดำเนินการ
    getList(db: Knex) {
      return db('ncdscreenform');
    }

   
    //บันทึกข้อมูล
    save(db: Knex, data: any) {
        return db('ncdscreenform').insert(data);
    }

    //แก้ไขข้อมูล
    update(db: Knex, id: any, data: any) {
        return db('ncdscreenform')
          .where('id', id)
          .update(data); //ส่ง data จาก routes/services-routests มาเป็นก้อนข้อมูล
    }

    
    //ลบข้อมูล

    delete(db: Knex, id: any) {
        return db('ncdscreenform')
          .where('id', id)
          .del();
    }
    
}