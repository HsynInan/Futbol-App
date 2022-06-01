import 'package:flutter/material.dart';
import 'package:futbal_gundem/API_Request/Puan_Api.dart';
import 'package:futbal_gundem/Widgets/Puan_widget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class PuanPage extends StatefulWidget {
  PuanPage({Key key}) : super(key: key);

  @override
  _PuanPageState createState() => _PuanPageState();
}

final HttpService httpService = HttpService();

class _PuanPageState extends State<PuanPage> {
  @override
  Widget build(BuildContext context) {
    var PuanAppbar = Container(
      height: 50,
      width: double.infinity,
      color: Colors.grey.shade300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                "No",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Text("TAKIM",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text("O",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 15,
                        ),
                        Text("G",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 15,
                        ),
                        Text("B",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 15,
                        ),
                        Text("M",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 15,
                        ),
                        Text("A",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 15,
                        ),
                        Text("Y",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 15,
                        ),
                        Text("AV",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 15,
                        ),
                        Text("P",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: Yenile,
        child: Column(
          children: [
            PuanAppbar,
            Expanded(
              flex: 10,
              child: FutureBuilder(
                future: httpService.getPosts(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<PaunAPI>> snapshot) {
                  if (snapshot.hasData) {
                    List<PaunAPI> posts = snapshot.data;
                    return buildListView(posts, context);
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<Null> Yenile() async {
  await Future.delayed((Duration(seconds: 1)));
}

Widget buildListView(List<PaunAPI> posts, BuildContext context) {
  return ListView(
    children: posts
        .map((PaunAPI post) => InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PuanPage()));
              },
              child: PaunWidget(
                sira: '${post.sira}',
                takimadi: '${post.name}',
                ooo: '${post.oOO}',
                ggg: '${post.gGG}',
                bbb: '${post.bBB}',
                mmm: '${post.mMM}',
                aaa: '${post.aAA}',
                yyy: '${post.yYY}',
                avav: '${post.aVAV}',
                puan: '${post.puan}',
                // logolink: '${post.logo}',
              ),
            ))
        .toList(),
  );
}

class HttpService {
  final String postsURL = "http://192.168.1.106/FutbolGundem/superlig_paun.php";

  Future<List<PaunAPI>> getPosts() async {
    final res = await http.get(postsURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<PaunAPI> veri = [];

      body.forEach((element) {
        veri.add(PaunAPI.fromJson(element));
      });
/*
      List<Autogenerated> posts = body
          .map(
            (dynamic item) => Autogenerated.fromJson(item),
          )
          .toList();
          */

      return veri;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
