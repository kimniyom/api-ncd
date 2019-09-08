import * as Knex from 'knex';

export class unit {
    
    //แสดงข้อมูลที่รอดำเนินการ
    getList(db: Knex) {
      return db('units');
    }
     
   
    //บันทึกข้อมูล
    save(db: Knex, data: any) {
        return db('units').insert(data);
    }

    //แก้ไขข้อมูล
    update(db: Knex, id: any, data: any) {
        return db('units')
          .where('id', id)
          .update(data); //ส่ง data จาก routes/services-routests มาเป็นก้อนข้อมูล
    }

    
    //ลบข้อมูล

    delete(db: Knex, id: any) {
        return db('units')
          .where('id', id)
          .del();
    }
    
}