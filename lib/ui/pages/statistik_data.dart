part of 'pages.dart';

class StatistikPage extends StatefulWidget {
  @override
  _StatistikPageState createState() => _StatistikPageState();
}

class _StatistikPageState extends State<StatistikPage> {
  int dropDownValue = 1;
  String filterValue = 'rt';
  bool sorting = false;

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users_one');
    int total1 = 0;
    int total2 = 0;
    int total3 = 0;
    int total4 = 0;
    int totalGolput = 0;

    print('FILTER!! : ${filterValue}');

    return GeneralPage(
      title: "Statistik Data",
      subtitle: 'Potensial Pemilihan Kuwu',
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
                    'Filter',
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
                    value: dropDownValue,
                    isExpanded: true,
                    underline: SizedBox(),
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          'Hitung Keseluruhan Presentase',
                          style: blackFontStyle3,
                        ),
                        value: 1,
                      ),
                      DropdownMenuItem(
                          child: Text(
                            'Filter Presentase Keseluruhan RT',
                            style: blackFontStyle3,
                          ),
                          value: 2),
                      DropdownMenuItem(
                          child: Text(
                            'Filter Presentase Terbesar Nomor 1',
                            style: blackFontStyle3,
                          ),
                          value: 3),
                      DropdownMenuItem(
                          child: Text(
                            'Filter Presentase Terbesar Nomor 2',
                            style: blackFontStyle3,
                          ),
                          value: 4),
                      DropdownMenuItem(
                          child: Text(
                            'Filter Presentase Terbesar Nomor 3',
                            style: blackFontStyle3,
                          ),
                          value: 5),
                      DropdownMenuItem(
                          child: Text(
                            'Filter Presentase Terbesar Nomor 4',
                            style: blackFontStyle3,
                          ),
                          value: 6),
                      DropdownMenuItem(
                          child: Text(
                            'Filter Presentase Terbesar Yang Tidak Memilih',
                            style: blackFontStyle3,
                          ),
                          value: 7),
                    ],
                    onChanged: (value) {
                      setState(() {
                        dropDownValue = value;
                        if (value >= 3) {
                          sorting = true;
                        } else {
                          sorting = false;
                        }

                        if (value == 1) {
                          // filterValue = '';
                        } else if (value == 2) {
                          filterValue = 'rt';
                          print('rt');
                        } else if (value == 3) {
                          filterValue = 'nomor1';
                          print('nomor1');
                        } else if (value == 4) {
                          filterValue = 'nomor2';
                          print('nomor2');
                        } else if (value == 5) {
                          filterValue = 'nomor3';
                          print('nomor3');
                        } else if (value == 6) {
                          filterValue = 'nomor4';
                          print('nomor4');
                        } else if (value == 7) {
                          filterValue = 'tidak_memilih';
                          print('tidak_memilih');
                        }
                      });
                    },
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height - 2 * 150,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      children: [
                        StreamBuilder<QuerySnapshot>(
                            stream: users.snapshots(),
                            builder: (_, snapshot) {
                              if (snapshot.hasData) {
                                if (dropDownValue == 1) {
                                  total1 = 0;
                                  total2 = 0;
                                  total3 = 0;
                                  total4 = 0;
                                  totalGolput = 0;

                                  for (int i = 0; i < snapshot.data.size; i++) {
                                    total1 += snapshot.data.docs[i]['nomor1'];
                                    total2 += snapshot.data.docs[i]['nomor2'];
                                    total3 += snapshot.data.docs[i]['nomor3'];
                                    total4 += snapshot.data.docs[i]['nomor4'];
                                    totalGolput +=
                                        snapshot.data.docs[i]['tidak_memilih'];
                                  }
                                  return CardTotal(total1, total2, total3,
                                      total4, totalGolput);
                                }
                                return Column();
                              } else {
                                return Container();
                              }
                            }),
                        StreamBuilder<QuerySnapshot>(
                            stream: users.orderBy(filterValue, descending: sorting).snapshots(),
                            builder: (_, snapshot) {
                              if (snapshot.hasData) {
                                if (dropDownValue >= 2) {
                                  return Column(
                                      children: snapshot.data.docs
                                          .map((e) => Padding(
                                              padding: EdgeInsets.only(top: 12, bottom: 12),
                                              child: CardViews(
                                                e.id.toString(),
                                                e.data()['nomor1'],
                                                e.data()['nomor2'],
                                                e.data()['nomor3'],
                                                e.data()['nomor4'],
                                                e.data()['tidak_memilih'],
                                              )))
                                          .toList());
                                }
                                return Container();
                              } else {
                                return Container();
                              }
                            }),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
