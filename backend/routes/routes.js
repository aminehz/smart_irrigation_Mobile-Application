const {Router} =require('express');
const authController=require('../controllers/authController');
const Electrovanne = require('../models/Electrovanne');
const electrovanneController=require('../controllers/electrovanneController');
const graphicController=require('../controllers/graphicController');
const router=Router();

router.get('/login',authController.login_get);
router.post('/login',authController.login_post);
router.get('/electrovanne',electrovanneController.electrovanne_get);
router.post('/electrovanne',electrovanneController.electrovanne_post);
router.post('/graphic',graphicController.Graphic_post);
router.get('/graphic',graphicController.Graphic_get);

/*router.get('/add-electro',authController.electrovanneGet);*/

module.exports=router;
