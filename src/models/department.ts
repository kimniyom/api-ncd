import * as Knex from 'knex';

export class department {

    getData(db: Knex) {
      return db('departments');
    }

    getDataId(db: Knex,id: any){
      return db('departments').where('id', id).limit(1);
    }

    //บันทึกข้อมูล
    save(db: Knex, data: any) {
        return db('departments').insert(data);
    }
    //แก้ไขข้อมูล
    update(db: Knex, departmentId: any, data: any) {
        return db('departments')
          .where('id', departmentId)
          .update(data); //ส่ง data จาก routes/department-routests มาเป็นก้อนข้อมูล
    }
    //ลบข้อมูล
    delete(db: Knex, departmentId: any) {
        return db('departments')
          .where('id', departmentId)
          .del();
    }
    
}