import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title, id, thumb;

  const DetailScreen({
    super.key,
    required this.title,
    required this.id,
    required this.thumb,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          shadowColor: Colors.black,
          elevation: 2,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.green,
              fontSize: 24,
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: id,
                  child: Container(
                    width: 250,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            offset: const Offset(10, 10),
                            color: Colors.black.withOpacity(0.5),
                          )
                        ]),
                    child: Image.network(
                      thumb,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
