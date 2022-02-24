import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesla_app/widget.dart';

void main() {
  runApp(const MyApp());
}

const primarycolor = Color(0xff2C3036);
const buttoncolor = Color(0xff058DD9);

const onprimarytextcolor = Color(0xff7F8489);
const primaryvariantcolor = Color(0xff5C0AFF);
const secondarytextcolor = Color(0xffAFBED0);
const primarytextcolor = Color(0xff1D2830);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: primarycolor,
          background: primarycolor,
          onSurface: primarytextcolor,
          onBackground: primarytextcolor,
          secondary: primarycolor,
          onSecondary: Colors.white,
        ),
        textTheme: GoogleFonts.latoTextTheme(
          const TextTheme(
              bodyText1: TextStyle(
                color: onprimarytextcolor,
                fontSize: 24,
              ),
              bodyText2: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50)),
        ),
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/background.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Small_button(
                        icon: CupertinoIcons.settings,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Tesla',
                  style: themeData.textTheme.bodyText1,
                ),
                Text(
                  'Cybertruck',
                  style: themeData.textTheme.bodyText2,
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 45, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '297',
                            style: TextStyle(
                              fontSize: 160,
                              fontFamily: 'Gilroy',
                              color: Colors.white,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Text(
                              'km',
                              style: themeData.textTheme.bodyText2!.copyWith(
                                  fontSize: 30,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: ''),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 200,
                      child: Container(
                        width: 392,
                        height: 28,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, left: 0),
                      child: Image.asset('assets/car2.png'),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
