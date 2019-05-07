/**
 * Created by Qingger Corp.
 * User: huangjie
 * Date: 2019/4/2
 * Time: 9:58
 */

module.exports = app =>{
    const {STRING,INTEGER,DATE} = app.Sequelize;
    const company = app.model.define('company',{
        id:{
            type:INTEGER,
            primaryKey:true,
            autoIncrement:true
        },
        companyName:STRING(255),
        companyDescription:STRING(255),
    },{
        tableName:'companies',
        timestamps:false,
    });

    return company;
}
