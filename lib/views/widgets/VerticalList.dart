part of'../homeimports.dart';

Widget verticalListShow({BuildContext? context}){
  var height = MediaQuery.of(context!).size.height /100;
  debugPrint(height.toString());
  return Padding(

      padding:const EdgeInsets.symmetric(horizontal: 10, ),
    child:       SizedBox(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: VerticalListModel.verticallistmodel.length,
          itemBuilder: ((context, index) {
            return   Column(
              children: [
                carList(index, context),
              ],
            );
          })),
    )
  );
}

Widget carList(int index, context){
  var height = MediaQuery.of(context!).size.height /100;
  var width = MediaQuery.of(context).size.width /100;
  return    Card(
    elevation: 0,
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Column(
      children: [
        Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top:20),
            child: Container(

              height: 11.2 * height,
              width:  22.2 * width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),

              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(VerticalListModel.verticallistmodel[index].imageUrl.toString(), fit: BoxFit.cover,)),),
          ),

          const       SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(VerticalListModel.verticallistmodel[index].title.toString()),
              Text(VerticalListModel.verticallistmodel[index].subtitle.toString()),
              const    SizedBox(height: 1,),
              Text(VerticalListModel.verticallistmodel[index].date.toString()),

            ],)


        ],),

        const SizedBox(height: 10,),

      ],
    ),);
}