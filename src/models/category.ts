import * as Knex from 'knex';

export class category {

    getData(db: Knex) {
      return db('categories');
    }
    //บันทึกข้อมูล
    save(db: Knex, data: any) {
        return db('categories').insert(data);
    }
    //แก้ไขข้อมูล
    update(db: Knex, categoryId: any, data: any) {
        return db('categories')
          .where('id', categoryId)
          .update(data); //ส่ง data จาก routes/category-routests มาเป็นก้อนข้อมูล
    }
    //ลบข้อมูล
    delete(db: Knex, categoryId: any) {
        return db('categories')
          .where('id', categoryId)
          .del();
    }

    //getFullData By Kimnioym 20190405
    getDatas(db: Knex){
      return db.raw(`
                SELECT c.*,g.g_name
                FROM categories c INNER JOIN groups g ON c.id_group = g.id
               
            `);
    }

    getDatasInGroup(db: Knex,group: any){
      return db.raw(`
                SELECT *
                FROM categories  
                WHERE id_group = ?
            `,[group]);
    }
    
}