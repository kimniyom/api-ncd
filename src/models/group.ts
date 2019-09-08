import * as Knex from 'knex';

export class group {

    getData(db: Knex) {
      return db('groups');
    }
    //บันทึกข้อมูล
    save(db: Knex, data: any) {
        return db('groups').insert(data);
    }
    //แก้ไขข้อมูล
    update(db: Knex, groupId: any, data: any) {
        return db('groups')
          .where('id', groupId)
          .update(data); //ส่ง data จาก routes/group-routests มาเป็นก้อนข้อมูล
    }
    //ลบข้อมูล
    delete(db: Knex, groupId: any) {
        return db('groups')
          .where('id', groupId)
          .del();
    }
    
}