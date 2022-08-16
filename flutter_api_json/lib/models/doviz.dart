/*
API GELİŞTİRİCİ:
  "Hasan ADIGÜZEL"
  "http://hasanadiguzel.com.tr"
*/
import 'dart:convert';

class TcmbBilgiAmacliKurlar {
  TcmbBilgiAmacliKurlar({
    this.unit,
    this.isim,
    this.currencyName,
    this.exchangeRate,
    this.kod,
    this.currencyCode,
  });

  int? unit;
  String? isim;
  String? currencyName;
  double? exchangeRate;
  String? kod;
  String? currencyCode;

  factory TcmbBilgiAmacliKurlar.fromJson(Map<String, dynamic> json) =>
      TcmbBilgiAmacliKurlar(
        unit: json["Unit"],
        isim: json["Isim"],
        currencyName: json["CurrencyName"],
        exchangeRate: json["ExchangeRate"].toDouble(),
        kod: json["Kod"],
        currencyCode: json["CurrencyCode"],
      );

  Map<String, dynamic> toJson() => {
        "Unit": unit,
        "Isim": isim,
        "CurrencyName": currencyName,
        "ExchangeRate": exchangeRate,
        "Kod": kod,
        "CurrencyCode": currencyCode,
      };
}
