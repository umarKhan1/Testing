part of '../homeimports.dart';
// this is the custom text field widget
Widget TextFormFieldWidget(
    {TextEditingController? controller,
    VoidCallback? onpress,
      bool isCountryName = false,
    BuildContext? context}) {
  var height = MediaQuery.of(context!).size.height /100;
  var width = MediaQuery.of(context).size.width /100;

  return Row(
    children: [
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            child: Row(
              children: [
                SizedBox(
                  width: 65.5 * width,
                  child: TextFormField(
                    controller: controller,
                    decoration:  InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade100, width: 2),
                      ),
                      enabledBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade100, width: 2),
                      ),
                      hintText: isCountryName == true ? TextStrings.firstCountry: TextStrings.secondCountry
                    ),
                  ),
                ),
             SizedBox(width: 5,),
                Container(height: 60, width: 50, decoration: BoxDecoration(color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(icon: Icon(Icons.search, color: Colors.white,),onPressed: onpress,),
                )
              ],
            ),
          ),

        ],
      ),
    ],
  );
}
