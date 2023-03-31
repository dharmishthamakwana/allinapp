import 'package:allinapp/screen/home/provider/bottam_provider.dart';
import 'package:allinapp/screen/home/view/home_screen.dart';
import 'package:allinapp/screen/home/view/web_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main()
{
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => WebProvider(),)
        ],
        child: Sizer(
          builder: (context, orientation, deviceType) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              routes: {
                '/' : (context) => HomeScreen(),
                'WebScreen' : (context) => WebScreen(),
              },
            );
          },
        ),
      )
  );
}
