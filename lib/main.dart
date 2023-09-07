import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stage_one/util/color_theme.dart';
import 'package:stage_one/views/web_view_kit.dart';
import 'package:webview_flutter/webview_flutter.dart'; // ADD

import 'src/navigation_controls.dart'; // ADD
import 'src/web_view_stack.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(230, 435),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: const WebViewApp(),
      ),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: immaYellowish,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: immaYellowish,
        title: Text(
          'HNGx Stage 1',
          style: TextStyle(
            color: immaBlack,
            fontFamily: 'Monteserrat',
            fontSize: 10.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(
            color: immaBlack,
            height: 1.h,
            thickness: 1.sp,
            indent: 15.w,
            endIndent: 15.w,
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(11.sp, 20.sp, 11.sp, 20.sp),
              child: Card(
                elevation: 1.sp,
                color: immaBlack.withOpacity(0.5),
                shadowColor: immaBlue,
                child: SizedBox(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25.h,
                        width: double.infinity,
                      ),
                      Container(
                        width: 130.w,
                        height: 130.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: immaWhite,
                            width: 1.w,
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                          color: immaBlack,
                          borderRadius: BorderRadius.circular(6.r),
                          image: const DecorationImage(
                            image:
                                AssetImage('assets/images/immadominion.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                        width: double.infinity,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Slack Name:',
                            style: TextStyle(
                              letterSpacing: 0.7.sp,
                              color: immaWhite,
                              fontFamily: 'Monteserrat',
                              fontSize: 6.sp,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'Imma Dominion',
                            style: TextStyle(
                              color: immaWhite,
                              fontFamily: 'Monteserrat',
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                        width: double.infinity,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30.sp, 0, 30.sp, 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WebViewKit(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10.h),
                            width: 207.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                              color: immaWhite,
                              // border: Border.all(
                              //   color: immaWhite,
                              // ),
                              borderRadius: BorderRadius.circular(7.r),
                            ),
                            child: Center(
                              child: Text(
                                'Open Github',
                                style: TextStyle(
                                  color: immaBlack,
                                  fontFamily: 'Monteserrat',
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
