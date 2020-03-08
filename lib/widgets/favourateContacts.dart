import 'package:f4or/chatScreen.dart';
import 'package:f4or/models/message_model.dart';
import 'package:flutter/material.dart';

class FavourateContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.5),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Favourate Contacts',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  iconSize: 20,
                  color: Colors.black,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(//color: Colors.amber,
            height: 75,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 5),
              scrollDirection: Axis.horizontal,
              itemCount: favourates.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(
                        user: favourates[index],
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:5.0,right: 5.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage(favourates[index].imageUrl),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          favourates[index].name,
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
