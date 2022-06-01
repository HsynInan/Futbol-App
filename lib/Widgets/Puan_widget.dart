import 'dart:ui';

import 'package:flutter/material.dart';

class PaunWidget extends StatefulWidget {
  final String sira;
  final String logolink;
  final String takimadi;
  final String ooo;
  final String ggg;
  final String bbb;
  final String mmm;
  final String aaa;
  final String yyy;
  final String avav;
  final String puan;
  PaunWidget({
    Key key,
    this.sira,
    this.takimadi,
    this.ooo,
    this.ggg,
    this.bbb,
    this.mmm,
    this.aaa,
    this.yyy,
    this.avav,
    this.puan,
    this.logolink,
  }) : super(key: key);

  @override
  _PaunWidgetState createState() => _PaunWidgetState();
}

class _PaunWidgetState extends State<PaunWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Text("${widget.sira}"),
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
                              Container(
                                height: 20,
                                width: 20,
                                //color: Colors.red,
                                //child: Image.network("${widget.logolink}"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${widget.takimadi}",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text("${widget.ooo}"),
                              SizedBox(
                                width: 8,
                              ),
                              Text("${widget.ggg}"),
                              SizedBox(
                                width: 8,
                              ),
                              Text("${widget.bbb}"),
                              SizedBox(
                                width: 8,
                              ),
                              Text("${widget.mmm}"),
                              SizedBox(
                                width: 8,
                              ),
                              Text("${widget.aaa}"),
                              SizedBox(
                                width: 8,
                              ),
                              Text("${widget.yyy}"),
                              SizedBox(
                                width: 8,
                              ),
                              Text("${widget.avav}"),
                              SizedBox(
                                width: 8,
                              ),
                              Text("${widget.puan}"),
                              SizedBox(
                                width: 8,
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
          ),
        ));
  }
}
