import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liburan keluarga',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 35, 136, 69)),
        useMaterial3: true,
      ),
      home: DetailScreen(liburan: liburanlist[0]),
    );
  }
}
class DetailScreen extends StatelessWidget {
  final Liburan keluarga;

  const DetailScreen({super.key, required this.liburan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          liburan.imageAsset,
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                      )
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 48, 129, 75))
                          ),
                        ),
                        )
                ],
              )
            ],
          ),
        )),
    )
  }
}
