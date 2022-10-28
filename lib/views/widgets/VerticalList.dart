part of '../homeimports.dart';

Widget verticalListShow({BuildContext? context}) {
  var height = MediaQuery.of(context!).size.height / 100;
  var width = MediaQuery.of(context).size.width / 100;
  var getApi = Get.put(NewApiController());
  return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: SizedBox(
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: getApi.newmodel.articles!.length,
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  Card(
                    elevation: 0,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 20),
                              child: Container(
                                height: 11.2 * height,
                                width: 22.2 * width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      getApi
                                          .newmodel.articles![index].urlToImage
                                          .toString(),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                          SizedBox(width: 55.5 * width, child:        Text(getApi.newmodel.articles![index].title
                              .toString(),style: TextStyle(fontWeight: FontWeight.bold),),


                                ),
                                SizedBox(
                                  width: 55.5 * width,
                                  child: Text(getApi.newmodel.articles![index].content
                                      .toString()),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(getApi
                                    .newmodel.articles![index].publishedAt
                                    .toString()),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              );
            })),
      ));
}
