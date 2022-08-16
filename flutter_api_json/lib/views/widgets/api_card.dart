import 'package:flutter/material.dart';

class ApiCard extends StatelessWidget {
  final String? isim;
  final String? currencyName;
  final String? exchangeRate;
  final String? kod;
  final String? currencyCode;
  final String? unit;

  ApiCard({
    @required this.unit,
    @required this.isim,
    @required this.currencyName,
    @required this.exchangeRate,
    @required this.kod,
    @required this.currencyCode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10.0),
      width: MediaQuery.of(context).size.width,
      height: 180.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            offset: const Offset(0.0, 10.0),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              isim!,
              style: TextStyle(
                fontSize: 19,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Unit: ',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Flexible(
                  child: Text(
                    unit!,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      //fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.visible,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Currency Name: ',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Flexible(
                  child: Text(
                    currencyName!,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      //fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.visible,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Exchange Rate: ',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  exchangeRate!,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    //fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Kod: ',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  kod!,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    //fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Currency Code: ',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  currencyCode!,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    //fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
