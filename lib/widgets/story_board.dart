part of 'widgets.dart';

class StoryBoard extends StatelessWidget {
  final String storyText;
  const StoryBoard({@required this.storyText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      height: 300.0,
      child: Center(
        child: Text(
          storyText,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
