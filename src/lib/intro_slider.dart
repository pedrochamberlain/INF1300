import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:nuance/home.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  IntroScreenState createState() => new IntroScreenState();
}

class IntroScreenState extends State {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: AppLocalizations.of(context).quarantine,
        description: AppLocalizations.of(context).quarantine_desc,
        pathImage: "assets/images/quarantine.png",
        backgroundColor: Colors.deepPurple[500],
      ),
    );
    slides.add(
      new Slide(
        title: AppLocalizations.of(context).staying_calm,
        description: AppLocalizations.of(context).staying_calm_desc,
        pathImage: "assets/images/happy.png",
        backgroundColor: Colors.deepPurple[500],
      ),
    );
    slides.add(
      new Slide(
        title: AppLocalizations.of(context).healthy_mind,
        description: AppLocalizations.of(context).healthy_mind_desc,
        pathImage: "assets/images/working-on-couch.png",
        backgroundColor: Colors.deepPurple[500],
      ),
    );
    slides.add(
      new Slide(
        title: AppLocalizations.of(context).relaxing,
        description: AppLocalizations.of(context).relaxing_desc,
        pathImage: "assets/images/relax.png",
        backgroundColor: Colors.deepPurple[500],
      ),
    );
  }

  void onDonePress() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Home(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}
