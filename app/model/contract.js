/**
 * Created by Qingger Corp.
 * User: huangjie
 * Date: 2019/4/2
 * Time: 9:58
 */

module.exports = app =>{
    const {STRING,INTEGER,DATE} = app.Sequelize;
    const contract = app.model.define('contract',{
        id:{
            type:INTEGER,
            primaryKey:true,
            autoIncrement:true
        },
        name:STRING,
    },{
        tableName:'contract',
        timestamps:false,
    });

    return contract;
}

''