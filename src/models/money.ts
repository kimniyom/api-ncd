import * as Knex from 'knex';

export class money {

    getData(db: Knex) {
      return db('money');
    }
    //บันทึกข้อมูล
    save(db: Knex, data: any) {
        return db('money').insert(data);
    }
    //แก้ไขข้อมูล
    update(db: Knex, moneyId: any, data: any) {
        return db('money')
          .where('id', moneyId)
          .update(data); //ส่ง data จาก routes/method-routests มาเป็นก้อนข้อมูล
    }
    //ลบข้อมูล
    delete(db: Knex, moneyId: any) {
        return db('money')
          .where('id', moneyId)
          .del();
    }
    
}