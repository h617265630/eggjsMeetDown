/**
 * Created by Qingger Corp.
 * User: huangjie
 * Date: 2019/4/2
 * Time: 9:15
 */

'use strict';

const Controller = require('egg/index').Controller;

class AdminController extends Controller {
    async index(){
        const {ctx} = this;

        // const CompanyList = await ctx.model.Company.findAll()
        const CompanyList = await this.app.mysql.query('select * from company');
        // this.ctx.body = CompanyList;

        await this.ctx.render('admin/admin.html',{list:CompanyList});
    }

    // async roomList(){
    //     const {ctx} = this;
    //     const RoomList = await ctx.model.Room.findAll()
    //     await this.ctx.render('admin/room.html',{list:RoomList});
    // }
    // async contractList(){
    //     const {ctx} = this;
    //     const RoomList = await ctx.model.Room.findAll()
    //     await this.ctx.render('admin/contract',{list:RoomList});
    // }
}

module.exports = AdminController;

