part of 'widgets.dart';

class UpdateData extends StatelessWidget {
  final String titleButton;
  final Function onUpdate;

  final Color color;

  UpdateData(this.color, {this.titleButton = 'Kirim Data', this.onUpdate});

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
