import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:untitledfood/Providers/MyProvider.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen();

  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(
      builder: (context, provider, c) => Visibility(
        visible: provider.states[4],
        child: Column(
          children: [
            ListTile(
              title: Text('About'),
              leading: IconButton(
                  onPressed: () {
                    provider.changeStates(4);
                  },
                  icon: Icon(Icons.arrow_back_ios)),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.w),
                  width: 5.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent, shape: BoxShape.circle),
                ),
                Column(
                  children: [
                    TextW('Lorem ipsum dolor sit amet, consectetur adipiscing'),
                    TextW(
                        'elit, sed do eiusmod tempor incididunt ut labore et'),
                    TextW('dolore magna aliqua. Ut enim ad minim veniam,'),
                    TextW('\t' +
                        'quis nostrud exercitation ullamco laboris nisi ut'),
                    TextW('\t\t' +
                        'aliquip ex ea commodo consequat. Duis aute irure'),
                    TextW('\t' +
                        'dolor in reprehenderit in voluptate velit esse cillum N'),
                    TextW('dolore eu fugiat nulla pariatur. Excepteur sint'),
                    TextW('occaecat cupidatat non proident, sunt in culpa qui'),
                    TextW('officia deserunt mollit anim id est laborum.'),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(left: 15.w, right: 15.w, bottom: 90.h),
                  width: 5.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent, shape: BoxShape.circle),
                ),
                Column(
                  children: [
                    TextW('Lorem ipsum dolor sit amet, consectetur adipiscing'),
                    TextW(
                        'elit, sed do eiusmod tempor incididunt ut labore et'),
                    TextW('dolore magna aliqua. Ut enim ad minim veniam,'),
                    TextW('\t' +
                        'quis nostrud exercitation ullamco laboris nisi ut'),
                    TextW('\t\t' +
                        'aliquip ex ea commodo consequat. Duis aute irure'),
                    TextW('\t' +
                        'dolor in reprehenderit in voluptate velit esse cillum N'),
                    TextW('dolore eu fugiat nulla pariatur. Excepteur sint'),
                    TextW('occaecat cupidatat non proident, sunt in culpa qui'),
                    TextW('officia deserunt mollit anim id est laborum.'),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15.w, right: 15.w, top: 12.h),
                  width: 5.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent, shape: BoxShape.circle),
                ),
                Column(
                  children: [
                    TextW('Lorem ipsum dolor sit amet, consectetur adipiscing'),
                    TextW(
                        'elit, sed do eiusmod tempor incididunt ut labore et'),
                    TextW('dolore magna aliqua. Ut enim ad minim veniam,'),
                    TextW('\t' + 'quis nostrud'),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  TextW(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey),
    );
  }
}
