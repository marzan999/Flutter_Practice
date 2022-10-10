// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AchievementPage extends StatelessWidget {
  const AchievementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text(
            'Art Work',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Image.network(
                    'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/293631143_3412226145767177_7505985175650611297_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=u2tNBS8GXAUAX-pwU5e&_nc_oc=AQlMz6zbzG-U8A5pUXxWVNeCoOLepEcx5CTv785Q95vuJnZ7Vbn5kMt57AcW8rt3blI&_nc_ht=scontent.fdac31-1.fna&oh=00_AT8vO1hPJllAD40aSxdw3D9CQDkr7msKn8CBihYBWDRtpg&oe=63485417'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Image.network(
                    'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/228954736_3146432425679885_9185626840190613508_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=aGhauQICwHIAX_KAHv4&_nc_ht=scontent.fdac31-1.fna&oh=00_AT_jkX_LJoIfzKdsrFmNIBqLlUKHeSLVYsI2dIy4QpTyKQ&oe=634A1AC2'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Image.network(
                    'https://scontent.fdac31-1.fna.fbcdn.net/v/t1.6435-9/101539189_2766939006962564_1093144317284843520_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=XEoa_9vZZSoAX8Oc6A7&_nc_ht=scontent.fdac31-1.fna&oh=00_AT9K7zKNExeu7wzYbcqRzrMjMmh07RD6lsaSbWMlLkhAiA&oe=636B05FD'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Image.network(
                    'https://scontent.fdac31-1.fna.fbcdn.net/v/t1.6435-9/121114095_2894161917573605_6176250108988284685_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=ssu1pRnspg0AX9D8QwK&_nc_ht=scontent.fdac31-1.fna&oh=00_AT_VZ_J5g2bgcbSNHuG-QPW6Y2BlcHMIddf8UQ5sz5ErDg&oe=63696B69'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Image.network(
                    'https://scontent.fdac31-1.fna.fbcdn.net/v/t1.6435-9/156730566_3024050524584743_3009609508949791695_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=IidQEKRprugAX_Kls4e&_nc_ht=scontent.fdac31-1.fna&oh=00_AT81My1MGJyg6vDZwMhA9ZLex3xICAsIluribRJ1X1hSKg&oe=6369AFE1'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Image.network(
                    'https://scontent.fdac31-1.fna.fbcdn.net/v/t1.6435-9/122861955_2911585485831248_1645190158053986729_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=FM_cTU4s8UAAX8sIbUz&_nc_ht=scontent.fdac31-1.fna&oh=00_AT8v6VcicudgrnRH4R32Kezq0TQo7zfaxxbh_-VHwyLBkQ&oe=636ABC27'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Image.network(
                    'https://scontent.fdac31-1.fna.fbcdn.net/v/t1.6435-9/131923365_2964927560497040_7217517113414364066_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=Z3vvvNPBa0AAX-_7iwS&_nc_ht=scontent.fdac31-1.fna&oh=00_AT_zMNuk2ADWMXyjYtNuv1FJ6YDOJg4RzqMU3ac5HvGilQ&oe=6368AA72'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Image.network(
                    'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/242102246_3178400822483045_5271641450793722818_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=p4ARchAnNXgAX9701ea&_nc_oc=AQk_-SIUzOCbp8DZoZhDdlCk32-cstp482I-EPxnqtNmAFSceSPk6o25WiX9CAWTvjw&_nc_ht=scontent.fdac31-1.fna&oh=00_AT_g62i_DQVmfM6EHCgNVUcNkAntV5AMDWKmHOB0v-C8jA&oe=634A01CB'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
