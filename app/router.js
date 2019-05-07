'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  router.get('/', controller.rental.home.index);

  router.get('/admin',controller.rental.admin.index);

  router.get('/meetup',controller.meetup.admin.index);
  router.get('/relation',controller.relation.admin.index);
  // router.get('/admin/room',controller.admin.roomList);
  // router.get('/admin/contract',controller.admin.contractList);
};


