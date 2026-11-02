import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String name;
  final String email;
  final String date;
  final String ImageName;

  const CustomListTile({
    super.key,
    required this.name,
    required this.email,
    required this.date,
    required this.ImageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        color: Colors.blueGrey,
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              child: Image.asset(ImageName, fit: BoxFit.cover),
            ),
            Expanded(
              child: ListTile(
                title: Text("$name"),
                subtitle: Text("$email"),
                trailing: Text("$date"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
