/**
 * Created by Qingger Corp.
 * User: huangjie
 * Date: 2019/4/2
 * Time: 9:58
 */

'use strict';


module.exports = app =>{
    const {STRING,INTEGER,DATE} = app.Sequelize;
    const Room = app.model.define('room',{
        id:{
            type:INTEGER,
            primaryKey:true,
            autoIncrement:true
        },
        area:INTEGER,
    },{
        tableName:'room',
        timestamps:false,
    });

    return Room;
}
