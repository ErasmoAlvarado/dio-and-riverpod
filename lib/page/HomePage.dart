import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shop/riverpod.dart';
import 'package:flutter_shop/widget/productCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("dio and riverpod"),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final showdata = ref.watch(GetProvider);
          final diodata = ref.watch(DioProvider);
          return FutureBuilder(
            future: showdata,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: diodata.n,
                      itemBuilder: (context, index) {
                        return ProductCard(
                            photo: snapshot.data[index].image,
                            price: snapshot.data[index].price.toString(),
                            title: snapshot.data[index].title);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: diodata.n,
                      itemBuilder: (context, index) {
                        return ProductCard(
                            photo: snapshot.data[index].image,
                            price: snapshot.data[index].price.toString(),
                            title: snapshot.data[index].title);
                      },
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
