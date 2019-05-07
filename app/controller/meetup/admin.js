/**
 * Created by Qingger Corp.
 * User: huangjie
 * Date: 2019/5/7
 * Time: 17:01
 */

'use strict';

const Controller = require('egg/index').Controller;

class AdminController extends Controller {
    async index() {
        const {ctx} = this;

        ctx.body = 'hello meetup';
    }


}



    module.exports = AdminController;

