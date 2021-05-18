part of 'widgets.dart';

class CardTotal extends StatelessWidget {
  final int qNomor1;
  final int qNomor2;
  final int qNomor3;
  final int qNomor4;
  final int qGolput;


  CardTotal(this.qNomor1, this.qNomor2, this.qNomor3, this.qNomor4,this.qGolput);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width - 48,
      height: 230,
      margin: EdgeInsets.only(right: 24, left: 24, top: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(spreadRadius: 3, blurRadius: 15, color: Colors.black12)
          ]),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(12, 12, 12, 6),
            width: double.infinity,
            child: Text(
              'HASIL KESELURUHAN',
              style: blackFontStyle2.copyWith(fontSize: 22),
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width - 72,
            color: '#2c3e50'.toColor(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Text(
                    'Pemilih No 1',
                    style: greyFontStyle.copyWith(color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 12),
                  child: Text('${qNomor1.toString()} => ${(qNomor1/(qNomor1+qNomor2+qNomor3+qNomor4+qGolput)*100).toStringAsFixed(2)}%',
                    style: greyFontStyle.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12,),
          Container(
            width: MediaQuery.of(context).size.width - 72,
            color: '#2c3e50'.toColor(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Text(
                    'Pemilih No 2',
                    style: greyFontStyle.copyWith(color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 12),
                  child: Text('${qNomor2.toString()} => ${(qNomor2/(qNomor1+qNomor2+qNomor3+qNomor4+qGolput)*100).toStringAsFixed(2)}%',
                    style: greyFontStyle.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12,),
          Container(
            width: MediaQuery.of(context).size.width - 72,
            color: '#2c3e50'.toColor(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Text(
                    'Pemilih No 3',
                    style: greyFontStyle.copyWith(color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 12),
                  child: Text('${qNomor3.toString()} => ${(qNomor3/(qNomor1+qNomor2+qNomor3+qNomor4+qGolput)*100).toStringAsFixed(2)}%',
                    style: greyFontStyle.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12,),
          Container(
            width: MediaQuery.of(context).size.width - 72,
            color: '#2c3e50'.toColor(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Text(
                    'Pemilih No 4',
                    style: greyFontStyle.copyWith(color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 12),
                  child: Text('${qNomor4.toString()} => ${(qNomor4/(qNomor1+qNomor2+qNomor3+qNomor4+qGolput)*100).toStringAsFixed(2)}%',
                    style: greyFontStyle.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12,),
          Container(
            width: MediaQuery.of(context).size.width - 72,
            color: '#2c3e50'.toColor(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: Text(
                    'Tidak Memilih',
                    style: greyFontStyle.copyWith(color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 12),
                  child: Text('${qGolput.toString()} => ${(qGolput/(qNomor1+qNomor2+qNomor3+qNomor4+qGolput)*100).toStringAsFixed(2)}%',
                    style: greyFontStyle.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
