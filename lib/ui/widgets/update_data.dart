part of 'widgets.dart';

class UpdateData extends StatelessWidget {
  final int rt;
  final int qNomor1;
  final int qNomor2;
  final int qNomor3;
  final int qNomor4;
  final int qGolput;
  final String titleButton;
  final Function onUpdate;

  final Color color;

  UpdateData(
      this.qNomor1,
      this.qNomor2,
      this.qNomor3,
      this.qNomor4,
      this.qGolput,
      this.color,
      {this.rt, this.titleButton = 'Kirim Data', this.onUpdate});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - (defaultMargin * 2),
      height: 45,
      child: RaisedButton(
        onPressed: () {
          if (onUpdate != null) onUpdate();
        },
        color: color,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Text(
          titleButton,
          style: blackFontStyle3.copyWith(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
