/**
 * Created by Qingger Corp.
 * User: huangjie
 * Date: 2019/4/3
 * Time: 17:32
 */

const Service = require('egg').Service;
class ContractService extends Service {
    async list(){
        // const company = await this.app.mysql.query('select * from company');

        return await this.ctx.modelGroups.Contract.find();

    }

}
module.exports = ContractService;