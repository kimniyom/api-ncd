import * as Knex from 'knex';

export class activity {
    
    //แสดงข้อมูลที่รอดำเนินการ
    getList(db: Knex) {
      return db('activity');
    }

        //แสดงข้อมูลที่รอดำเนินการ
    getListUser(db: Knex,user_it_id) {
      return db('activity').where('user_it_id',user_it_id);
    }
     
   
    //บันทึกข้อมูล
    save(db: Knex, data: any) {
        return db('activity').insert(data);
    }

    //แก้ไขข้อมูล
    update(db: Knex, id: any, data: any) {
        return db('activity')
          .where('id', id)
          .update(data); //ส่ง data จาก routes/services-routests มาเป็นก้อนข้อมูล
    }

    
    //ลบข้อมูล

    delete(db: Knex, id: any) {
        return db('activity')
          .where('id', id)
          .del();
    }
    
}