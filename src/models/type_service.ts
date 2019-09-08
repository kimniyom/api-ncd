import * as Knex from 'knex';

export class type_service {

    getData(db: Knex) {
      return db('type_service');
    }
    //บันทึกข้อมูล
    save(db: Knex, data: any) {
        return db('type_service').insert(data);
    }
    //แก้ไขข้อมูล
    update(db: Knex, type_serviceId: any, data: any) {
        return db('type_service')
          .where('id', type_serviceId)
          .update(data); //ส่ง data จาก routes/type_service-routests มาเป็นก้อนข้อมูล
    }
    //ลบข้อมูล
    delete(db: Knex, type_serviceId: any) {
        return db('type_service')
          .where('id', type_serviceId)
          .del();
    }
    
}