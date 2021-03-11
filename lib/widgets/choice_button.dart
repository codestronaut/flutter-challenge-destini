part of 'widgets.dart';

class ChoiceButton extends StatelessWidget {
  final int choice;
  final String choiceText;
  final Function action;
  const ChoiceButton({
    @required this.choice,
    @required this.choiceText,
    @required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: action,
      child: Text(
        choiceText,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      style: TextButton.styleFrom(
        minimumSize: Size(
          double.infinity,
          64.0,
        ),
        backgroundColor:
            choice == 1 ? primaryAccentColor : secondaryAccentColor,
        primary: Colors.white,
      ),
    );
  }
}
