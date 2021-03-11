part of 'pages.dart';

class StoryPage extends StatefulWidget {
  StoryPage({Key key}) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

// StoryBrain object
StoryBrain storyBrain = StoryBrain();

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        title: Text(
          'Destini',
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 24.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StoryBoard(
              storyText: storyBrain.getStory(),
            ),
            Container(
              child: Column(
                children: [
                  ChoiceButton(
                    choice: 1,
                    choiceText: storyBrain.getFirstChoice(),
                    action: () {
                      setState(() {
                        storyBrain.nextStory(1);
                      });
                    },
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Visibility(
                    visible: storyBrain.buttonShouldBeVisible(),
                    child: ChoiceButton(
                      choice: 2,
                      choiceText: storyBrain.getSecondChoice(),
                      action: () {
                        setState(() {
                          storyBrain.nextStory(2);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
