import 'package:flutter/material.dart';
import 'package:flutter23222/customCard.dart';
import 'package:flutter23222/model/chateModel.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter_slidable/flutter_slidable.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  List<ChatModel> chats = [
    ChatModel(
        name: 'Dev',
        icon: 'assets/image/jimmy-fermin-bqe0J0b26RQ-unsplash.jpg',
        isGroup: false,
        time: '01:30',
        currentMessage: 'currentMessage'),
    ChatModel(
        name: 'Dev1',
        icon: 'assets/image/henri-meilhac-jJ0tLs2ROd4-unsplash.jpg',
        isGroup: true,
        time: '12:32',
        currentMessage: 'hello ')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFFF7F0F3),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        titleSpacing: 20,
        title: ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(
              colors: [
                Color(0xFF875DFC),
                Color(0xFFFA70FF),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(Offset.zero & bounds.size);
          },
          child: const Text(
            "Camelion",
            style: TextStyle(
              fontSize: 27.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        shadowColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset('assets/icon/search.svg'),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          InkWell(
            onTap: () {
              print('Click Profile Pic');
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 15),
              child: CircleAvatar(
                radius: 22, // Image radius
                backgroundImage: AssetImage('assets/image/dp.jpg'),
              ),
            ),
          )
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: (chats.length),
        itemBuilder: (context, index) => CustomCard(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
