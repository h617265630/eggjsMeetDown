/* eslint valid-jsdoc: "off" */

'use strict';
/**
 * @param {Egg.EggAppInfo} appInfo app info
 */
module.exports = appInfo => {
  /**
   * built-in config
   * @type {Egg.EggAppConfig}
   **/
  const config = {};

  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + '_1553847092390_6570';

  // add your middleware config here
  config.middleware = [];

  // add your user config here
  const userConfig = {
    // myAppName: 'egg',
  };
  config.mysql = {
    client:{
      host:'localhost',
      port:'3306',
      user:'tomorrow',
      password:'willbefine',
      database:'burn',
    },
    app:true,
    agent:false,
  };

  const sequelizeConfig = require('./config.sequelize');
  config.sequelize = sequelizeConfig;
  // config.sequelize = {
  //   dialect:'mysql',
  //   host:'localhost',
  //   port:'3306',
  //   user:'tomorrow',
  //   password:'willbefine',
  //   database:'burn',
  // };
  config.view = {
    defaultViewEngine: 'nunjucks',
    mapping: {
      '.html': 'nunjucks',
    },
  };


  return {
    ...config,
    ...userConfig,
  };
};

