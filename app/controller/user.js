'use strict';
const Controller = require('egg').Controller;

function toInt(str){
    if(typeof str == 'number')return str;
    if(!str) return str;
    return parseInt(str,10)||0;
}

class UserController extends Controller {
    async index() {
        const _ctx = this.ctx;
        const user = await _ctx.model.User.findAll();
        _ctx.body = user;
    }

    async list(){
        const _ctx = this.ctx;
        const user = await _ctx.model.User.findAll();
        _ctx.body = user;
    }

    async show() {
        const ctx = this.ctx;
        ctx.body = await ctx.model.User.findById(toInt(ctx.params.id));
    }

    async create() {
        const ctx = this.ctx;
        const {name, age} = ctx.request.body;
        const user = await ctx.model.User.create({name, age});
        ctx.status = 201;
        ctx.body = user;
    }

    async update() {
        const ctx = this.ctx;
        const id = toInt(ctx.params.id);
        const user = await ctx.model.user.findById(id);
        if (!user) {
            ctx.status = 404;
            return;
        }
        const {name, age} = ctx.request.body;
        await user.update({name, age});
        ctx.body = user;
    }

    async destroy() {
        const ctx = this.ctx;
        const id = toInt(ctx.params.id);
        const user = await ctx.model.user.findById(id);
        if (!user) {
            ctx.status = 404;
            return;
        }
        await user.destroy();
        ctx.status = 200;
    }
}
module.exports = UserController;
