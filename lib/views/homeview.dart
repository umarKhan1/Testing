part of './homeimports.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  TextEditingController firstCountry = TextEditingController();
  TextEditingController secondCountry = TextEditingController();
  var getApi = Get.put(NewApiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              TextFormFieldWidget(
                  controller: firstCountry,


                  onpress: () {
                    getApi.getNewsDetails(context, firstCountry.text);
                    firstCountry.clear();
                  },
                  isCountryName: true,
                  context: context),
              const SizedBox(
                height: 2,
              ),
              TextFormFieldWidget(
                  controller: secondCountry,
                  onpress: () {
                    getApi.getNewsDetails(context, secondCountry.text);
                    secondCountry.clear();
                  },
                  context: context),
              Obx(() => getApi.newmodel.totalResults == null
                  ? const Padding(
                padding:  EdgeInsets.only(top: 18.0),
                child:  Center(
                        child: Text(
                          "No Data Found Search Something..!",
                        ),
                      ),
                  )
                  : getApi.isloading.value == true
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: Colors.blue,
                          ),
                        )
                      : getApi.newmodel.totalResults == 0
                          ? const  Padding(
                            padding:  EdgeInsets.only(top: 18.0),
                            child: Center(
                                child: Text("No Data Found Search Again...!")),
                          )
                          : Column(
                              children: [
                                verticalListShow(context: context),
                                getApi.newmodel.totalResults == 0
                                    ? Container()
                                    : const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 18.0),
                                        child: Divider(
                                          height: 5,
                                          thickness: 2,
                                          color: Colors.black,
                                        ),
                                      ),
                                verticalListShow(context: context),
                              ],
                            )),
            ]))
          ],
        ),
      ),
    );
  }
}
