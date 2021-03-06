import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/constants.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: const EdgeInsets.only(left: 32, top: 36, right: 24),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Setting",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    fontFamily: englishFontfamily,
                    color: textColor,
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/頭像.png'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              children: const [
                Icon(
                  Icons.border_color_rounded,
                  color: primaryColor7,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "系統設定",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    fontFamily: chineseFontfamily,
                    color: textColor,
                  ),
                )
              ],
            ),
            const Divider(
              height: 24,
              thickness: 2,
            ),
            const SizedBox(
              height: 8,
            ),
            buildAccountoptionRow(context, "新增群組"),
            buildAccountoptionRow(context, "成員編輯"),
            buildAccountoptionRow(context, "群組編輯"),
            buildAccountoptionRow(context, "外觀設定"),
            buildAccountoptionRow(context, "系統設定"),
            const SizedBox(
              height: 32,
            ),
            Row(
              children: const [
                Icon(
                  Icons.volume_up_rounded,
                  color: primaryColor7,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "通知",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    fontFamily: chineseFontfamily,
                    color: textColor,
                  ),
                )
              ],
            ),
            const Divider(
              height: 24,
              thickness: 2,
            ),
            const SizedBox(
              height: 8,
            ),
            buildNotificationOptionRow("購物通知", true),
            buildNotificationOptionRow("群組通知", false),
            buildNotificationOptionRow("即期食物食用提醒", true),
            const SizedBox(
              height: 48,
            ),
            Center(
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(
                  "Sign Out",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: englishFontfamily,
                    color: textColor,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            fontFamily: chineseFontfamily,
            color: textColor,
          ),
        ),
        Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            value: isActive,
            onChanged: (bool val) {
              setState(() {});
            },
            activeColor: primaryColor8,
            trackColor: primaryColor1,
          ),
        ),
      ],
    );
  }

  GestureDetector buildAccountoptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: chineseFontfamily,
                  color: textColor,
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "Option 1",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: englishFontfamily,
                    ),
                  ),
                  Text(
                    "Option 2",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: englishFontfamily,
                    ),
                  ),
                  Text(
                    "Option 3",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: englishFontfamily,
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Close",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: englishFontfamily,
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: chineseFontfamily,
                color: textColor,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
