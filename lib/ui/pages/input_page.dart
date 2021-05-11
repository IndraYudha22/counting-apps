part of 'pages.dart';

class InputPage extends StatefulWidget {
  final Function onBackButtonPressed;

  InputPage({this.onBackButtonPressed});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int dropDownValue = 0;
  int dropDownValueOption = 0;
  int rt = 0;
  int qNomor1 = 0;
  int qNomor2 = 0;
  int qNomor3 = 0;
  int qNomor4 = 0;
  int qGolput = 0;
  TextEditingController rtController = TextEditingController();

  TextEditingController n1Controller = TextEditingController(text: '0');
  TextEditingController n2Controller = TextEditingController(text: '0');
  TextEditingController n3Controller = TextEditingController(text: '0');
  TextEditingController n4Controller = TextEditingController(text: '0');
  TextEditingController golputController = TextEditingController(text: '0');

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    List<String> docID = [];

    return GeneralPage(
      title: "Input Data",
      subtitle: "Potensial Pemilihan Kuwu",
      onBackButtonPressed: () {
        Get.back();
      },
      backColor: 'FAFAFC'.toColor(),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 24, defaultMargin, 6),
                  child: Text(
                    'RT',
                    style: blackFontStyle2,
                  ),
                ),
                StreamBuilder<QuerySnapshot>(
                    stream: users.snapshots(),
                    builder: (_, snapshot) {
                      if (snapshot.hasData) {
                        for (int i = 0; i < snapshot.data.size; i++) {
                          // total += snapshot.data.docs[i]['nomor1'];
                          // print(total);
                          docID.add(
                              snapshot.data.docs[i].reference.id.toString());
                          // print(snapshot.data.docs[i].reference.id);
                        }
                        return Column();
                      } else {
                        return Column();
                      }
                    }),
                Container(
                  width: double.infinity,
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black)),
                  child: DropdownButton(
                    value: dropDownValue,
                    isExpanded: true,
                    underline: SizedBox(),
                    items: [
                      DropdownMenuItem(child: Text('- Pilih Nomor RT -',style: greyFontStyle,),value: 0),
                      DropdownMenuItem(
                        child: Text(
                          'RT 01',
                          style: blackFontStyle3,
                        ),
                        value: 1,
                      ),
                      DropdownMenuItem(
                          child: Text(
                            'RT 02',
                            style: blackFontStyle3,
                          ),
                          value: 2),
                      DropdownMenuItem(child: Text('RT 03',style: blackFontStyle3,),value: 3),
                      DropdownMenuItem(child: Text('RT 04',style: blackFontStyle3,),value: 4),
                      DropdownMenuItem(child: Text('RT 05',style: blackFontStyle3,),value: 5),
                      DropdownMenuItem(child: Text('RT 06',style: blackFontStyle3,),value: 6),
                      DropdownMenuItem(child: Text('RT 07',style: blackFontStyle3,),value: 7),
                      DropdownMenuItem(child: Text('RT 08',style: blackFontStyle3,),value: 8),
                      DropdownMenuItem(child: Text('RT 09',style: blackFontStyle3,),value: 9),
                      DropdownMenuItem(child: Text('RT 10',style: blackFontStyle3,),value: 10),
                      DropdownMenuItem(child: Text('RT 11',style: blackFontStyle3,),value: 11),
                      DropdownMenuItem(child: Text('RT 12',style: blackFontStyle3,),value: 12),
                      DropdownMenuItem(child: Text('RT 13',style: blackFontStyle3,),value: 13),
                      DropdownMenuItem(child: Text('RT 14',style: blackFontStyle3,),value: 14),
                      DropdownMenuItem(child: Text('RT 15',style: blackFontStyle3,),value: 15),
                      DropdownMenuItem(child: Text('RT 16',style: blackFontStyle3,),value: 16),
                      DropdownMenuItem(child: Text('RT 17',style: blackFontStyle3,),value: 17),
                      DropdownMenuItem(child: Text('RT 18',style: blackFontStyle3,),value: 18),
                      DropdownMenuItem(child: Text('RT 19',style: blackFontStyle3,),value: 19),
                      DropdownMenuItem(child: Text('RT 20',style: blackFontStyle3,),value: 20),
                      DropdownMenuItem(child: Text('RT 21',style: blackFontStyle3,),value: 21),
                      DropdownMenuItem(child: Text('RT 22',style: blackFontStyle3,),value: 22),
                      DropdownMenuItem(child: Text('RT 23',style: blackFontStyle3,),value: 23),
                      DropdownMenuItem(child: Text('RT 24',style: blackFontStyle3,),value: 24),
                      DropdownMenuItem(child: Text('RT 25',style: blackFontStyle3,),value: 25),
                      DropdownMenuItem(child: Text('RT 26',style: blackFontStyle3,),value: 26),
                      DropdownMenuItem(child: Text('RT 27',style: blackFontStyle3,),value: 27),
                      DropdownMenuItem(child: Text('RT 28',style: blackFontStyle3,),value: 28),
                      DropdownMenuItem(child: Text('RT 29',style: blackFontStyle3,),value: 29),
                      DropdownMenuItem(child: Text('RT 30',style: blackFontStyle3,),value: 30),
                      DropdownMenuItem(child: Text('RT 31',style: blackFontStyle3,),value: 31),
                      DropdownMenuItem(child: Text('RT 32',style: blackFontStyle3,),value: 32),
                      DropdownMenuItem(child: Text('RT 33',style: blackFontStyle3,),value: 33),
                      DropdownMenuItem(child: Text('RT 34',style: blackFontStyle3,),value: 34),
                      DropdownMenuItem(child: Text('RT 35',style: blackFontStyle3,),value: 35),
                      DropdownMenuItem(child: Text('RT 36',style: blackFontStyle3,),value: 36),
                      DropdownMenuItem(child: Text('RT 37',style: blackFontStyle3,),value: 37),
                      DropdownMenuItem(child: Text('RT 38',style: blackFontStyle3,),value: 38),
                      DropdownMenuItem(child: Text('RT 39',style: blackFontStyle3,),value: 39),
                    ],
                    onChanged: (value) {
                      setState(() {
                        dropDownValue = value;
                      });
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin:
                  EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 6),
                  child: Text(
                    'Kebutuhan',
                    style: blackFontStyle2,
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin:
                  EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 24),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black)),
                  child: DropdownButton(
                    value: dropDownValueOption,
                    isExpanded: true,
                    underline: SizedBox(),
                    items: [
                      DropdownMenuItem(child: Text('- Pilih Kebutuhan -',style: greyFontStyle,),value: 0),
                      DropdownMenuItem(
                        child: Text(
                          'Menambahkan Data',
                          style: blackFontStyle3,
                        ),
                        value: 1,
                      ),
                      DropdownMenuItem(
                          child: Text(
                            'Mengurangi Data',
                            style: blackFontStyle3,
                          ),
                          value: 2),
                    ],
                    onChanged: (value) {
                      setState(() {
                        dropDownValueOption = value;
                      });
                    },
                  ),
                ),

                // Container(
                //   width: double.infinity,
                //   margin:
                //       EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 24),
                //   padding: EdgeInsets.symmetric(horizontal: 10),
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(8),
                //       border: Border.all(color: Colors.black)),
                //   child: TextField(
                //     controller: rtController,
                //     decoration: InputDecoration(
                //       border: InputBorder.none,
                //       hintStyle: greyFontStyle,
                //       hintText: 'Masukan Nomor RT',
                //     ),
                //     keyboardType: TextInputType.number,
                //   ),
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(
                            defaultMargin, 24, defaultMargin, 0),
                        child: Text(
                          "Nomor Pilihan",
                          style: blackFontStyle2.copyWith(
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(
                            defaultMargin, 12, defaultMargin, 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Nomor 1", style: greyFontStyle),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          print(n1Controller.text);
                                          qNomor1 = int.parse( (n1Controller.text == '') ? '0' : n1Controller.text);
                                          qNomor1 = max(0, qNomor1 - 1);
                                          n1Controller.text = qNomor1.toString();
                                        });
                                      },
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(width: 1),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/btn_min.png"))),
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 26,
                                      margin:
                                          EdgeInsets.fromLTRB(6, 0, 6, 0),
                                      // padding: EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(color: Colors.black)),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        controller: n1Controller,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                    // SizedBox(
                                    //   width: 50,
                                    //   child: Text(
                                    //     qNomor1.toString(),
                                    //     textAlign: TextAlign.center,
                                    //     style: blackFontStyle2,
                                    //   ),
                                    // ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          print('NILAI ${n1Controller.text}');
                                          qNomor1 = int.parse( (n1Controller.text == '') ? '0' : n1Controller.text);
                                          qNomor1 = min(999, qNomor1 + 1);
                                          n1Controller.text = qNomor1.toString();
                                        });
                                      },
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(width: 1),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/btn_add.png"))),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Nomor 2", style: greyFontStyle),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          qNomor2 = int.parse( (n2Controller.text == '') ? '0' : n2Controller.text);
                                          qNomor2 = max(0, qNomor2 - 1);
                                          n2Controller.text = qNomor2.toString();
                                        });
                                      },
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            border: Border.all(width: 1),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/btn_min.png"))),
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 26,
                                      margin:
                                      EdgeInsets.fromLTRB(6, 0, 6, 0),
                                      // padding: EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(color: Colors.black)),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        controller: n2Controller,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                    // SizedBox(
                                    //   width: 50,
                                    //   child: Text(
                                    //     qNomor1.toString(),
                                    //     textAlign: TextAlign.center,
                                    //     style: blackFontStyle2,
                                    //   ),
                                    // ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          print('NILAI ${n2Controller.text}');
                                          qNomor2 = int.parse( (n2Controller.text == '') ? '0' : n2Controller.text);
                                          qNomor2 = min(999, qNomor2 + 1);
                                          n2Controller.text = qNomor2.toString();
                                        });
                                      },
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            border: Border.all(width: 1),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/btn_add.png"))),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Nomor 3", style: greyFontStyle),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          qNomor3 = int.parse( (n3Controller.text == '') ? '0' : n3Controller.text);
                                          qNomor3 = max(0, qNomor3 - 1);
                                          n3Controller.text = qNomor3.toString();
                                        });
                                      },
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            border: Border.all(width: 1),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/btn_min.png"))),
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 26,
                                      margin:
                                      EdgeInsets.fromLTRB(6, 0, 6, 0),
                                      // padding: EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(color: Colors.black)),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        controller: n3Controller,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                    // SizedBox(
                                    //   width: 50,
                                    //   child: Text(
                                    //     qNomor1.toString(),
                                    //     textAlign: TextAlign.center,
                                    //     style: blackFontStyle2,
                                    //   ),
                                    // ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          print('NILAI ${n3Controller.text}');
                                          qNomor3 = int.parse( (n3Controller.text == '') ? '0' : n3Controller.text);
                                          qNomor3 = min(999, qNomor3 + 1);
                                          n3Controller.text = qNomor3.toString();
                                        });
                                      },
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            border: Border.all(width: 1),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/btn_add.png"))),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Nomor 4 (Ono Daryono)",
                                    style: blackFontStyle3),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          print(n4Controller.text);
                                          qNomor4 = int.parse( (n4Controller.text == '') ? '0' : n4Controller.text);
                                          qNomor4 = max(0, qNomor1 - 1);
                                          n4Controller.text = qNomor4.toString();
                                        });
                                      },
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            border: Border.all(width: 1),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/btn_min.png"))),
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 26,
                                      margin:
                                      EdgeInsets.fromLTRB(6, 0, 6, 0),
                                      // padding: EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(color: Colors.black)),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        controller: n4Controller,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                    // SizedBox(
                                    //   width: 50,
                                    //   child: Text(
                                    //     qNomor1.toString(),
                                    //     textAlign: TextAlign.center,
                                    //     style: blackFontStyle2,
                                    //   ),
                                    // ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          print('NILAI ${n4Controller.text}');
                                          qNomor4 = int.parse( (n4Controller.text == '') ? '0' : n4Controller.text);
                                          qNomor4 = min(999, qNomor4 + 1);
                                          n4Controller.text = qNomor4.toString();
                                        });
                                      },
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            border: Border.all(width: 1),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/btn_add.png"))),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Tidak Memilih", style: greyFontStyle),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          qGolput = int.parse( (golputController.text == '') ? '0' : golputController.text);
                                          qGolput = max(0, qGolput - 1);
                                          golputController.text = qGolput.toString();
                                        });
                                      },
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            border: Border.all(width: 1),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/btn_min.png"))),
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 26,
                                      margin:
                                      EdgeInsets.fromLTRB(6, 0, 6, 0),
                                      // padding: EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(color: Colors.black)),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        controller: golputController,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                    // SizedBox(
                                    //   width: 50,
                                    //   child: Text(
                                    //     qNomor1.toString(),
                                    //     textAlign: TextAlign.center,
                                    //     style: blackFontStyle2,
                                    //   ),
                                    // ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          qGolput = int.parse( (golputController.text == '') ? '0' : golputController.text);
                                          qGolput = min(999, qGolput + 1);
                                          golputController.text = qGolput.toString();
                                        });
                                      },
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            border: Border.all(width: 1),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/btn_add.png"))),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          StreamBuilder<DocumentSnapshot>(
              stream: users
                  .doc(dropDownValue.toString())
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    child: UpdateData(
                      qNomor1,
                      qNomor2,
                      qNomor3,
                      qNomor4,
                      qGolput,
                      mainColor,
                      onUpdate: () {
                        print(snapshot.connectionState);
                        if (snapshot.connectionState ==
                            ConnectionState.active) {
                          if (dropDownValue == 0) {
                            showTopSnackBar(
                              context,
                              CustomSnackBar.error(
                                message:
                                    "Tolong Pilih Nomor RT Dengan Benar!!",
                              ),
                            );
                            // ScaffoldMessenger.of(context).showSnackBar(
                            //   SnackBar(
                            //     content: Container(
                            //       child: Align(alignment: Alignment.topCenter,),
                            //       // Text(
                            //       //   'Tolong Nomor RT Dimasukan Dengan Benar!!',
                            //       //   style: GoogleFonts.poppins()
                            //       //       .copyWith(color: Colors.white),
                            //       // ),
                            //     ),
                            //     backgroundColor: Colors.redAccent,
                            //     action: SnackBarAction(
                            //         label: 'Done', onPressed: () {}),
                            //   ),
                            // );
                          } else {
                            if (docID.contains(dropDownValue.toString())) {
                              if (dropDownValueOption == 1) {
                                users.doc(dropDownValue.toString()).update({
                                  'nomor1': snapshot.data['nomor1'] + qNomor1,
                                  'nomor2': snapshot.data['nomor2'] + qNomor2,
                                  'nomor3': snapshot.data['nomor3'] + qNomor3,
                                  'nomor4': snapshot.data['nomor4'] + qNomor4,
                                  'tidak_memilih':
                                  snapshot.data['tidak_memilih'] + qGolput,
                                });
                                setState(() {
                                  dropDownValueOption = 0;
                                  dropDownValue = 0;
                                  qNomor1 = 0;
                                  qNomor2 = 0;
                                  qNomor3 = 0;
                                  qNomor4 = 0;
                                  qGolput = 0;
                                  n1Controller.text = '0';
                                  n2Controller.text = '0';
                                  n3Controller.text = '0';
                                  n4Controller.text = '0';
                                  golputController.text = '0';
                                });
                                showTopSnackBar(
                                  context,
                                  CustomSnackBar.success(
                                    message: "Data Berhasil Ditambah",
                                  ),
                                );
                              } else if (dropDownValueOption == 2){
                                users.doc(dropDownValue.toString()).update({
                                  'nomor1': snapshot.data['nomor1'] - qNomor1,
                                  'nomor2': snapshot.data['nomor2'] - qNomor2,
                                  'nomor3': snapshot.data['nomor3'] - qNomor3,
                                  'nomor4': snapshot.data['nomor4'] - qNomor4,
                                  'tidak_memilih':
                                  snapshot.data['tidak_memilih'] - qGolput,
                                });
                                setState(() {
                                  dropDownValueOption = 0;
                                  dropDownValue = 0;
                                  qNomor1 = 0;
                                  qNomor2 = 0;
                                  qNomor3 = 0;
                                  qNomor4 = 0;
                                  qGolput = 0;
                                  n1Controller.text = '0';
                                  n2Controller.text = '0';
                                  n3Controller.text = '0';
                                  n4Controller.text = '0';
                                  golputController.text = '0';
                                });
                                showTopSnackBar(
                                  context,
                                  CustomSnackBar.success(
                                    message: "Data Berhasil Dikurangi",
                                  ),
                                );
                              } else {
                                showTopSnackBar(
                                    context,
                                    CustomSnackBar.error(
                                      message: "Data Tidak Terkirim!!, Tolong Isi Kebutuhan!!",
                                    ));
                              }
                            } else {
                              if (dropDownValueOption == 1) {
                                users.doc(dropDownValue.toString()).set({
                                  'rt' : dropDownValue,
                                  'nomor1': qNomor1,
                                  'nomor2': qNomor2,
                                  'nomor3': qNomor3,
                                  'nomor4': qNomor4,
                                  'tidak_memilih': qGolput
                                });
                                setState(() {
                                  dropDownValueOption = 0;
                                  dropDownValue = 0;
                                  qNomor1 = 0;
                                  qNomor2 = 0;
                                  qNomor3 = 0;
                                  qNomor4 = 0;
                                  qGolput = 0;
                                  n1Controller.text = '0';
                                  n2Controller.text = '0';
                                  n3Controller.text = '0';
                                  n4Controller.text = '0';
                                  golputController.text = '0';
                                });
                                showTopSnackBar(
                                  context,
                                  CustomSnackBar.success(
                                    message: "Data Berhasil Dikirim",
                                  ),
                                );
                              } else{
                                showTopSnackBar(
                                    context,
                                    CustomSnackBar.error(
                                      message: "Data Tidak Terkirim!!!, Karena Data RT Belum Terdaftar, Pilih Data Kebutuhan Menjadi Tambah Data",
                                    ));
                              }
                            }
                          }
                        } else {
                          showTopSnackBar(
                              context,
                              CustomSnackBar.error(
                                message: "Jaringan Internet Tidak Ada!",
                              ));
                        }
                      },
                    ),
                  );
                } else {
                  return Container();
                }
              }),
        ],
      ),
    );
  }
}
