import 'package:flutter_svg/flutter_svg.dart';
import 'package:rika/constant/data.dart';
import 'package:rika/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:rika/widgets/chat_bubble_wideget.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  final TextEditingController _sendMessageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [header()],
      ),
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/messege_list_screen');
                      },
                      icon: SvgPicture.asset('assets/svgs/arrow_left.svg')),
                ),
                const Spacer(),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/setting_screen');
                    },
                    icon: Image.asset('assets/images/settings.png'),
                  ),
                ),
              ],
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 16,
              child: ListTile(
                leading: Image.asset('assets/images/Rectangle 74.png'),
                title: const Text('Hasan Mahmud'),
                subtitle: const Text('rikafashionshop@gmail.com'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            getBody(),
          ]),
    );
  }

  Widget getBottom() {
    return Positioned(
      bottom: 10,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(color: grey.withOpacity(0.2)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: (MediaQuery.of(context).size.width - 40) / 2,
                  child: Row(
                    children: const <Widget>[],
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width - 40) / 2,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: (MediaQuery.of(context).size.width - 140) / 2,
                        height: 40,
                        decoration: BoxDecoration(
                            color: grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: TextField(
                            cursorColor: black,
                            controller: _sendMessageController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Aa",
                              suffixIcon: SvgPicture.asset(
                                  'assets/svgs/cemera.svg',
                                  width: 30),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset('assets/svgs/send.svg', width: 40),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 10,
        right: 10,
      ),
      child: Card(
        elevation: 0,
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding:
              const EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 80),
          children: List.generate(messages.length, (index) {
            return ChatBubble(
                isMe: messages[index]['isMe'],
                messageType: messages[index]['messageType'],
                message: messages[index]['message'],
                profileImg: messages[index]['profileImg']);
          }),
        ),
      ),
    );
  }
}
