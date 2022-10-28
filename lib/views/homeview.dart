part of './homeimports.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  TextEditingController firstCountry = TextEditingController();
  TextEditingController secondCountry = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
                  TextFormFieldWidget(
                  controller: firstCountry, onpress: () {}, context: context),
              const SizedBox(
                height: 2,
              ),
              TextFormFieldWidget(
                  controller: secondCountry, onpress: () {}, context: context),
              verticalListShow(context: context),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 18.0),
  child:   Divider(height: 5,thickness: 2, color: Colors.black,),
),
                  verticalListShow(context: context),
                ]))
          ],
        ),
      ),
    );
  }
}
