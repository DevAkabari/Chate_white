import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter23222/individualPage.dart';
import 'package:flutter23222/model/chateModel.dart';

class CustomCard extends StatelessWidget {
  CustomCard({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => IndividualPage(
                      chatModel: chatModel,
                    )));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(chatModel.isGroup
                  ? 'assets/image/sde.jpg'
                  : 'assets/image/userr.jpg'),
            ),
            title: Text(
              chatModel.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.done_all,
                  size: 16,
                  color: Color(0xFF71BFFF),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  chatModel.currentMessage,
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
            trailing: Text(
              chatModel.time,
              style: TextStyle(color: Color(0xFFB3B3B3)),
            ),
          ),
          Divider(
            indent: 10,
            endIndent: 10,
          )
        ],
      ),
    );
  }
}
