import * as Knex from 'knex';

export class users {

    getData(db: Knex) {
      return db('users');
    }
    //บันทึกข้อมูล
    save(db: Knex, data: any) {
        return db('users').insert(data);
    }
    //แก้ไขข้อมูล
    update(db: Knex, userId: any, data: any) {
        return db('users')
          .where('id', userId)
          .update(data); //ส่ง data จาก routes/users-routests มาเป็นก้อนข้อมูล
    }
    //ลบข้อมูล
    delete(db: Knex, userId: any) {
        return db('users')
          .where('id', userId)
          .del();
    }

    //ดึงข้อมูลที่ user แจ้งซ่อมที่กำลังดำเนินการ
    getJobNotify(db: Knex, userId: any){
      return db.raw(`
          SELECT s.*,u.first_name,u.last_name,t.ts_name,p.p_name,a.first_name as a_first_name,a.last_name as a_last_name
          FROM services s 
          INNER JOIN users u ON s.user_id = u.id
          INNER JOIN type_service t ON s.id_type_service = t.id
          INNER JOIN problem p ON s.id_problem = p.id
          LEFT JOIN users a ON s.user_it_receive = a.id
          WHERE s.user_id = ? AND s.status NOT IN('4','5') AND (s.date_end IS NULL OR s.date_end = '' OR s.date_end = '0000-00-00 00:00:00')
        `,[userId]);
    }

    getUser(db: Knex){
      return db.raw(`
          SELECT u.*,d.d_name,o.HOSP_NAME AS off_name
          FROM users u INNER JOIN departments d ON u.id_department = d.id
          INNER JOIN hserv o ON u.hos_code = o.HOSP_CODE
          WHERE d.d_status = '1'
        `);
    }

    getDetailUser(db: Knex,userId: any){
      return db.raw(`
          SELECT u.*,d.d_name,o.HOSP_NAME AS off_name
          FROM users u INNER JOIN departments d ON u.id_department = d.id
          INNER JOIN hserv o ON u.hos_code = o.HOSP_CODE
          WHERE d.d_status = '1' AND u.id = ?
        `,[userId]);
    }
    
}