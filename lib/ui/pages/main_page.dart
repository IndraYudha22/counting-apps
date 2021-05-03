part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {


    return GeneralPage(
      title: "Aplikasi",
      subtitle: 'Potensial Pemilihan Kuwu',
      child: Container(
        height: MediaQuery.of(context).size.height -200,
        margin: EdgeInsets.only(bottom: defaultMargin),
        padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - (defaultMargin * 2),
                    height: 45,
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          Get.to(InputPage());
                        });
                      },
                      color: mainColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'Input Data',
                        style: blackFontStyle3.copyWith(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - (defaultMargin * 2),
                    height: 45,
                    child: RaisedButton(
                      onPressed: () {
                        Get.to(StatistikPage());
                      },
                      color: mainColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'Cek Data Statistik',
                        style: blackFontStyle3.copyWith(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Text('AEma Studio', style: blackFontStyle3.copyWith(color: 'f0f0f0'.toColor()),),
            ),)
          ],
        ),
      ),
    );
  }
}
