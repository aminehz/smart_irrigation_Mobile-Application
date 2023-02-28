const Graphic=require('../models/Graphic');

module.exports.Graphic_get=(req,res)=>{
    const {x,y}=req.body;
    try {
          Graphic.find()
          .then((result)=>{
            res.send(result);
          })
                 
        }
       catch(err){
            res.status(400).json({});
       }
}


module.exports.Graphic_post=async(req,res)=>{
    const {x,y}=req.body;
    
    const newGraphic=new Graphic({
        x:"dimanche",
        y:1
    });

    newGraphic.save((err,graphic)=>{
        if(err) return console.error(err);
        console.log(graphic);
    });

}