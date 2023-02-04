import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventInfo extends StatelessWidget {
  const EventInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.8),
          body: SingleChildScrollView(
            child: Card(
              color: Colors.black.withOpacity(0.2),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Image.asset(
                        'assets/dices.jpeg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("If you're visiting this page, you're likely here because you're searching for a random sentence. Sometimes a random word just isn't enough, and that is where the random sentence generator comes into play. By inputting the desired number, you can make a list of as many random sentences as you want or need. Producing random sentences can be helpful in a number of different ways.For writers, a random sentence can help them get their creative juices flowing. Since the topic of the sentence is completely unknown, it forces the writer to be creative when the sentence appears. There are a number of different ways a writer can use the random sentence for creativity. The most common way to use the sentence is to begin a story. Another option is to include it somewhere in the story. A much more difficult challenge is to use it to end a story. In any of these cases, it forces the writer to think creatively since they have no idea what sentence will appear from the tool."),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){}, child: Text("Learn More",style: GoogleFonts.lato(color: Colors.blue),),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue
                          ),
                          child: Text(";)"),
                          onPressed: (){
                            Navigator.pushNamed(context, '/detail');

                          },
                        ),

                      ],


                    ),
                  ],

                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
          ),
        ));
  }
}
