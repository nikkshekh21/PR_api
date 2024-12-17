import 'package:flutter/material.dart';
import 'package:pr_api/provider/provider.dart';
import 'package:provider/provider.dart';

import '../models/country_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<HomepageProvider>().getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: ListView.builder(
            itemCount:
                context.watch<HomepageProvider>().countrymodel?.art?.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                child: Row(children: [
                  Text(
                    context
                        .watch<HomepageProvider>()
                        .countrymodel!
                        .totalResults
                        .toString(),
                  ),
                ]),
              );
            }));
  }
}
