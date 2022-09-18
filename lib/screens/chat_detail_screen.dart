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
      body: header(),
      bottomNavigationBar: getBottom(),
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
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
              child: Row(
                children: [
                  SvgPicture.asset('assets/svgs/notification.svg'),
                  const SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset('assets/svgs/dots.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 6,
          child: ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: const Color.fromARGB(255, 2, 188, 73), width: 3)),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image:
                            ExactAssetImage('assets/images/Rectangle 74.png'),
                      )),
                ),
              ),
            ),
            title: const Text(
              'Kristine Jones',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            subtitle: const Text(
              'Online',
              style: TextStyle(
                color: Color.fromARGB(255, 2, 188, 73),
                fontSize: 11,
              ),
            ),
            trailing: SizedBox(
              width: 80,
              child: Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset('assets/svgs/audio.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset('assets/svgs/video.svg'),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
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
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 26,
        left: 20,
        right: 20,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        // color: Colors.amber,
        child: Row(
          children: [
            Container(
              width: (MediaQuery.of(context).size.width) - 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color.fromARGB(255, 204, 204, 204),
                ),
              ),
              child: TextField(
                cursorColor: black,
                decoration: InputDecoration(
                    prefixIcon: SizedBox(
                      width: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset('assets/svgs/cemera.svg'),
                          const SizedBox(
                            width: 10,
                          ),
                          const VerticalDivider(
                            endIndent: 5,
                            indent: 5,
                            color: Color.fromARGB(255, 221, 221, 221),
                            thickness: 2,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                    suffixIcon: SizedBox(
                      width: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset('assets/svgs/microphone.svg'),
                          const SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset('assets/svgs/link.svg'),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    hintText: 'Type message...',
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset('assets/svgs/send.svg', width: 40),
          ],
        ),
      ),
    );
  }

  Widget getBody() {
    return SizedBox(
      height: 450,
      child: Padding(
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
      ),
    );
  }
}

