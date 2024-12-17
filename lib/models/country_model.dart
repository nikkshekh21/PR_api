import 'package:flutter/material.dart';

class countryModel {
  String? status;
  int? totalResults;
  List<articale>? art;

  countryModel({this.status, this.totalResults, this.art});

  factory countryModel.maptomodel(Map m1) {
    List artlist = m1["articles"];
    return countryModel(
      status: m1["status"],
      totalResults: m1["totalResults"],
      art: artlist.map((e) => articale.maptoarticale(e)).toList(),
    );
  }
}

class Sourcemodel {
  String? id;
  String? name;

  Sourcemodel({this.id, this.name});
  factory Sourcemodel.maptosourcemodel(Map m1) {
    return Sourcemodel(
      id: m1["id"],
      name: m1["name"],
    );
  }
}

class articale {
  Sourcemodel? sourcemodel;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  articale(
      {this.sourcemodel,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  factory articale.maptoarticale(Map m1) {
    return articale(
      sourcemodel: Sourcemodel.maptosourcemodel(m1["source"]),
      author: m1["author"],
      title: m1["title"],
      description: m1["description"],
      url: m1["url"],
      urlToImage: m1["urlToImage"],
      publishedAt: m1["publishedAt"],
      content: m1["content"],
    );
  }
}
// {
// "status": "ok",
// "totalResults": 50,
// -"articles": [
// -{
// -"source": {
// "id": null,
// "name": "Yahoo Entertainment"
// },
// "author": "Reuters",
// "title": "Alibaba to sell China department store chain Intime for $1.3 billion loss - Yahoo Finance",
// "description": "The sale marks a further acceleration in Alibaba's restructuring after the group split into six business units last year in its biggest-ever revamp and...",
// "url": "https://finance.yahoo.com/news/alibaba-sell-mall-chain-1-042546498.html",
// "urlToImage": "https://media.zenfs.com/en/reuters-finance.com/447a4f8c38dce8ecdba4fe39b0a41e87",
// "publishedAt": "2024-12-17T05:48:45Z",
// "content": "(Reuters) -Alibaba Group (BABA, 9988.HK) said on Tuesday it would sell its Chinese department store unit Intime and book a $1.3 billion loss from the deal, as the retail giant reshuffles its business… [+2088 chars]"
// },
