/*
API GELİŞTİRİCİ:
  "Hasan ADIGÜZEL"
  "http://hasanadiguzel.com.tr"
*/
import 'dart:convert' show jsonDecode, utf8;
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_api_json/models/doviz.dart';
import 'package:flutter_api_json/views/widgets/api_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<TcmbBilgiAmacliKurlar> _user = [];

  Future<List<TcmbBilgiAmacliKurlar>> fetchData() async {
    var response = await http
        .get(Uri.parse('http://hasanadiguzel.com.tr/api/bilgiamackur'));
    List<TcmbBilgiAmacliKurlar> uList = [];
    if (response.statusCode == 200) {
      var jsonResponse = utf8.decode(response.body.runes.toList());
      var jsonRespone2 = Map<String, dynamic>.from(jsonDecode(jsonResponse));
      debugPrint(jsonResponse.toString());
      for (var jsondata in jsonRespone2["TCMB_BilgiAmacliKurlar"]) {
        uList.add(TcmbBilgiAmacliKurlar.fromJson(jsondata));
        print(jsondata);
      }

      return uList;
    }
    return uList;
  }

  @override
  void initState() {
    fetchData().then((value) {
      setState(() {
        _user.addAll(value);
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TCMB Bilgi Amaclı Kurlar",
          style: TextStyle(
            color: Color.fromARGB(255, 161, 13, 13),
            fontSize: 22.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ApiCard(
            unit: _user[index].unit.toString(),
            isim: _user[index].isim.toString(),
            currencyName: _user[index].currencyName.toString(),
            exchangeRate: _user[index].exchangeRate.toString() == "0.0"
                ? "Bekleniyor"
                : _user[index].exchangeRate.toString(),
            kod: _user[index].kod.toString() == "0.0"
                ? "Bekleniyor"
                : _user[index].kod.toString(),
            currencyCode: _user[index].currencyCode.toString() == "0.0"
                ? "Bekleniyor"
                : _user[index].currencyCode.toString(),
          );
        },
        itemCount: _user.length,
      ),
    );
  }
}
