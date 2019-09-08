import * as Knex from 'knex';

export class uploads {
    //บันทึกข้อมูล
    save(db: Knex, data: any) {
         return db.raw(`
                    INSERT INTO r506 VALUES ?
        `,data);
    }

    //บันทึกข้อมูล
    savelog(db: Knex, data: any) {
        return db('loguploads').insert(data);
    }

    getLog(db: Knex,hoscode: any){
      return db('loguploads').where('hoscode', hoscode);
    }

    getLogAll(db: Knex){
      return db('loguploads').orderBy('d_update','desc');
    }

    getFile(db: Knex,file: any){
        return db('loguploads').count('filename AS total').where('filename',file);
    }
    
}