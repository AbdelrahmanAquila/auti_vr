import 'package:auti_vr/shared/components.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LessonsScreen extends StatefulWidget {
  const LessonsScreen({super.key});

  @override
  State<LessonsScreen> createState() => _LessonsScreenState();
}

class _LessonsScreenState extends State<LessonsScreen> {
  List vids = [];

  CollectionReference vrVids = FirebaseFirestore.instance.collection('vrVids');
  getData() async {
    var response = await vrVids.get();
    for (var element in response.docs) {
      setState(() {
        vids.add(element.data());
        print(vids);
        print('========================');
      });
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الدروس'), centerTitle: true),
      body: ListView.separated(
        itemCount: vids.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return myCard(
            context: context,
            title: "${vids[index]["name"]}",
            downloadMethod: () {},
            playVid: () async {
              final url = '${vids[index]["url"]}';
              //  final file = await PDFapi.loadNetwork(url);
              print(url);
              // print('=========================');
              // openPDF(context, file);
            },
          );
        },
      ),
    );
  }
}
