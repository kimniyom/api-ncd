import * as Knex from 'knex';

export class equipments {

    getData(db: Knex) {
      return db('equipments');
    }
    //บันทึกข้อมูล
    save(db: Knex, data: any) {
        return db('equipments').insert(data);
    }
    //แก้ไขข้อมูล
    update(db: Knex, equipmentId: any, data: any) {
        return db('equipments')
          .where('id', equipmentId)
          .update(data); //ส่ง data จาก routes/equipments-routests มาเป็นก้อนข้อมูล
    }
    //ลบข้อมูล
    delete(db: Knex, equipmentId: any) {
        return db('equipments')
          .where('id', equipmentId)
          .del();
    }

    //getFullData By Kimnioym 20190405
    getDatas(db: Knex){
      return db.raw(`
                SELECT e.*,c.c_name,g.g_name,m.md_name,mn.mn_name,u.u_name
                FROM equipments e INNER JOIN categories c ON e.id_category = c.id
                INNER JOIN groups g ON e.id_group = g.id
                INNER JOIN methods m ON e.id_method = m.id
                INNER JOIN money mn ON e.id_money = mn.id
                INNER JOIN units u ON e.id_unit = u.id
            `);
    }

    getDetail(db: Knex,number){
      return db.raw(`
          SELECT e.*,c.c_name,g.g_name,m.md_name,mn.mn_name,u.u_name
          FROM equipments e INNER JOIN categories c ON e.id_category = c.id
          INNER JOIN groups g ON e.id_group = g.id
          INNER JOIN methods m ON e.id_method = m.id
          INNER JOIN money mn ON e.id_money = mn.id
          INNER JOIN units u ON e.id_unit = u.id
          WHERE e.number = ?
      `,[number]);
    }

    getMaxid(db: Knex){
       return db.raw(`
          SELECT MAX(key_id) as key_id
          FROM equipments 
          LIMIT 1
      `);
    }

    getAutoCode(db: Knex,newid){
      return db.raw(`SELECT concat('C',LPAD(?,5,'0')) as autoid
        `,[newid]);
    }
    
}