const Electrovanne = require('../models/Electrovanne');


module.exports.electrovanne_get=(req,res)=>{
    const {nom,status}=req.body;
    try {
          Electrovanne.find()
          .then((result)=>{
            res.send(result);
          })
                 
        }
       catch(err){
            res.status(400).json({});
       }
}

module.exports.electrovanne_post=async (req,res) => {

    const {nom,status}= req.body;
    

const newElectrovanne = new Electrovanne({
  nom:"electro6",
  status:true,
});

newElectrovanne.save((err, electrovanne) => {
  if (err) return console.error(err);
  console.log(electrovanne);
});
}