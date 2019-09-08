import * as Knex from 'knex';

export class problem {

    getData(db: Knex) {
      return db('problem');
    }
    //บันทึกข้อมูล
    save(db: Knex, data: any) {
        return db('problem').insert(data);
    }
    //แก้ไขข้อมูล
    update(db: Knex, problemId: any, data: any) {
        return db('problem')
          .where('id', problemId)
          .update(data); //ส่ง data จาก routes/problem-routests มาเป็นก้อนข้อมูล
    }
    //ลบข้อมูล
    delete(db: Knex, problemId: any) {
        return db('problem')
          .where('id', problemId)
          .del();
    }
    
}