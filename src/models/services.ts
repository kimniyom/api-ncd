import * as Knex from 'knex';

export class services {
    
    //แสดงข้อมูลที่รอดำเนินการ
    /*
    getList(db: Knex, status: any) {
      return db('services').where('status',status);
    }
    */
     getList(db: Knex, status: any) {
      return db.raw(`
                    SELECT s.*,u.first_name,u.last_name,t.ts_name,p.p_name,a.first_name as a_first_name,a.last_name as a_last_name
                    FROM services s 
                    INNER JOIN users u ON s.user_id = u.id
                    INNER JOIN type_service t ON s.id_type_service = t.id
                    INNER JOIN problem p ON s.id_problem = p.id
                    LEFT JOIN users a ON s.user_it_receive = a.id
                    WHERE s.status = ? 
        `,[status]);
    }
   
    //บันทึกข้อมูล
    save(db: Knex, data: any) {
        return db('services').insert(data);
    }

    //แก้ไขข้อมูล
    update(db: Knex, serviceId: any, data: any) {
        return db('services')
          .where('id', serviceId)
          .update(data); //ส่ง data จาก routes/services-routests มาเป็นก้อนข้อมูล
    }

    checkService(db: Knex, number: any){
      return db('services').where('serial_equipments',number).orderBy('id','desc').limit(1);
    }

    getDetail(db: Knex, number: any){
      return db.raw(`
                    SELECT s.*,u.first_name,u.last_name,t.ts_name,p.p_name,a.first_name as a_first_name,a.last_name as a_last_name
                    FROM services s 
                    INNER JOIN users u ON s.user_id = u.id
                    INNER JOIN type_service t ON s.id_type_service = t.id
                    INNER JOIN problem p ON s.id_problem = p.id
                    LEFT JOIN users a ON s.user_it_receive = a.id
                    WHERE s.serial_equipments = ? AND s.status NOT IN('4','5') 
                    LIMIT 1
        `,[number]);
    }

    getDetailService(db: Knex,id: any){
        return db.raw(`
            SELECT s.*,t.ts_name,p.p_name
            FROM services s INNER JOIN type_service t ON s.id_type_service = t.id
            INNER JOIN problem p ON s.id_problem = p.id
            WHERE s.id = ? LIMIT 1
            `,[id]);
    }
    
    //ลบข้อมูล
    /*
    delete(db: Knex, userId: any) {
        return db('user')
          .where('id', userId)
          .del();
    }
    */
    
}