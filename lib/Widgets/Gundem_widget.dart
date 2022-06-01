import 'dart:ui';

import 'package:flutter/material.dart';

class GundemWidget extends StatefulWidget {
  final String baslik;
  final String imagelink;
  final String kaynakAdi;
  final String ilanSaati;
  GundemWidget(
      {Key key, this.baslik, this.imagelink, this.kaynakAdi, this.ilanSaati})
      : super(key: key);

  @override
  _HaberlerWidgetState createState() => _HaberlerWidgetState();
}

class _HaberlerWidgetState extends State<GundemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Container(
          height: 150,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("29 dakika önce",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                    Text("${widget.kaynakAdi}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12))
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${widget.baslik}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        // color: Colors.green,
                        // child: Image.network("${widget.imagelink}"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
