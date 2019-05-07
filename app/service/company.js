
/**
 * Created by Qingger Corp.
 * User: huangjie
 * Date: 2019/4/2
 * Time: 10:02
 */

const Service = require('egg').Service;
class CompanyService extends Service {
    async list(){
        // const company = await this.app.mysql.query('select * from company');

        return await this.ctx.modelGroups.Company.find();

    }

}
module.exports = CompanyService;