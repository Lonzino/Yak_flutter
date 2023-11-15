import 'package:flutter/material.dart';

class postcard extends StatefulWidget {
  int number;
  postcard({super.key, required this.number});
  // ignore: library_private_types_in_public_api
  _postcardstate creatState() => _postcardstate();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}

class _postcardstate extends State<postcard>{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey,
          child: Row(
              children: [
                const SizedBox(width: 20, height: 5),
                const Text('엄마')
              ],
          ),
        ),
        AspectRatio(
            aspectRatio: 1,
            child: PageView(
              children: [
                Container(
                  color: Colors.amber,
                ),
                Container(
                  color: Colors.amber,
                ),
                Container(
                  color: Colors.amber,
                ),
              ],
            )

        ),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          color: Colors.pink,
          child: const Center(child: Text('아이콘칸')),
        ),
        Container(
          height: 10,
          width: MediaQuery.of(context).size.width,
          color: Colors.green,
          child: const Center(child: Text('좋아칸')),
        ),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          color: Colors.blue,
          child: const Center(child: Text('설명칸')),
        ),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          color: Colors.amber,
          child: const Center(child: Text('댓글칸')),
        ),
      ],
    );
  }
}