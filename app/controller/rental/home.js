'use strict';

const Controller = require('egg/index').Controller;

class HomeController extends Controller {
  async index() {
    const { ctx } = this;
    ctx.body="hello rental";
  }
  async list(){
    const _ctx = this.ctx;
    const room = await _ctx.model.Room.findAll();
    _ctx.body = room;
  }
}

module.exports = HomeController;
