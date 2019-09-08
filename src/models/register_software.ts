import * as Knex from 'knex';

export class register_software {

    getData(db: Knex) {
      return db('register_software');
    }
    //บันทึกข้อมูล
    save(db: Knex, data: any) {
        return db('register_software').insert(data);
    }
    //แก้ไขข้อมูล
    update(db: Knex, register_softwareId: any, data: any) {
        return db('register_software')
          .where('id', register_softwareId)
          .update(data); //ส่ง data จาก routes/register_software-routests มาเป็นก้อนข้อมูล
    }
    //ลบข้อมูล
    delete(db: Knex, register_softwareId: any) {
        return db('register_software')
          .where('id', register_softwareId)
          .del();
    }
    
}