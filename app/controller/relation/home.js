'use strict';

const Controller = require('egg/index').Controller;

class HomeController extends Controller {
    async index() {
        const { ctx } = this;
        ctx.body="hello relation";
    }
}

module.exports = HomeController;
