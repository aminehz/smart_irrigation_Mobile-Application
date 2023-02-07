const User = require('../models/User');



module.exports.login_get = (req,res) => {
    res.render('login');
}


module.exports.login_post = async(req,res) => {
    const { email,password } = req.body;
    
    
   try {
    const user=await User.login(email,password);
    
    res.status(200).json({user:user._id})
   }
   catch(err){
        res.status(400).json({});
   }
}

