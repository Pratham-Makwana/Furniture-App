class CategoryModel{
   String imageUrl,name , price , type , fullName, description;
   Map<String,List<String>> diifrentImageUrl;


   CategoryModel({
     required this.imageUrl,
     required this.name,
     required this.fullName,
     required this.price,
     required this.type,
     required this.description,
     required this.diifrentImageUrl,
  });

   List<CategoryModel> categoriesGrid = [
     CategoryModel(
         imageUrl: "chair_1.png",
         name: "Nashville",
         fullName: "Nashville armchair",
         price: "\$165.00" ,
         type: 'chair',
         description: "A contemporary twist on classic mid-century modern design" ,
         diifrentImageUrl: {
           "chair_1" : ["chair_1.png","chair_1_1.png","chair_1_2.png"],
           "chair_0" : ["chair_0.png","chair_0_1.png","chair_0_2.png"],
           "chair_2" : [
             "chair_2.png",
             "chair_2_1.png",
             "chair_2_2.png",
             "chair_2_3.png",
             "chair_2_4.png",
           ],
         },
     ),

     CategoryModel(
       imageUrl: "tripos_lamp_1.png",
       name: "Tripod Lamp",
       fullName: "Tripod Lamp",
       price: "\$1520.00" ,
       type: 'tripod_lamp',
       description: "A contemporary twist on classic mid-century modern design" ,
       diifrentImageUrl: {
         "tripos_lamp_1" : ["tripos_lamp_1.png"],
         "tripos_lamp_2" : ["tripos_lamp_2.png"],
         "tripos_lamp_3" : ["tripos_lamp_3.png"],
       },
     ),

     CategoryModel(
       imageUrl: "floor_lamp_1.png",
       name: "Floor Lamp",
       fullName: "Floor Lamp",
       price: "\$5520.00" ,
       type: 'floor_lamp',
       description: "A contemporary twist on classic mid-century modern design" ,
       diifrentImageUrl: {
         "floor_lamp_1" : ["floor_lamp_1.png"],
         "floor_lamp_2" : ["floor_lamp_2.png"],
         "floor_lamp_3" : ["floor_lamp_3.png"],
       },
     ),

     CategoryModel(
       imageUrl: "sofa_1.png",
       name: "Sofa",
       fullName: "Sofa Set",
       price: "\$1520.00" ,
       type: 'sofa',
       description: "A contemporary twist on classic mid-century modern design" ,
       diifrentImageUrl: {
         "sofa_2" : ["sofa_2.png"],
         "sofa_1" : ["sofa_1.png"],
         "sofa_3" : ["sofa_3.png"],
         "sofa_4" : ["sofa_4.png"],
       },
     ),
   ];

}