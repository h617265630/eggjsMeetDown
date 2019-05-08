'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  router.get('/', controller.rental.home.index);

  router.get('/admin',controller.rental.admin.index);
  router.get('/roomList',controller.rental.home.list);

  router.get('/meetup',controller.meetup.admin.index);
  router.get('/relation',controller.relation.admin.index);


  router.resources('user','/users',controller.user);
  router.get('/userList',controller.user.list);
  // router.get('/admin/room',controller.admin.roomList);
  // router.get('/admin/contract',controller.admin.contractList);
};


