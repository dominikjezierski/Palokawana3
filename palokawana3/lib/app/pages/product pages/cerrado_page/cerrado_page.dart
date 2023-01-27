import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:palokawana3/app/pages/cart_page/cart_page.dart';
import 'package:palokawana3/app/pages/cotroller_page/my_controller.dart';
import 'package:palokawana3/app/pages/main_page/cart_model.dart';
import 'package:palokawana3/app/pages/product%20pages/product_content.dart';
import 'package:provider/provider.dart';

class CerradoPage extends StatelessWidget {
  final Product = const ProductContent(
    itemName: 'Brasil Cerrado',
    imagePath: 'images/Cerrado.png',
    itemSpecies: '100% Arabika',
    itemDescription:
        'Castanha do Cerrado dzięki naturnalnej obróbce ziaren,  wyróznia się na tle innych swoją słodyczą. W profilu sensorycznym możemy wyczuć nuty mlecznej czekolady, karmelu i jagód. Dla osób, które preferują mleczne kawy będzie to idealne rozwiązanie. Również miłośnicy przelewowych metod zaparzania, odkryją nowe doznania smakowe.',
    itemCountry: 'Kraj pochodzenia:',
    itemRegion: 'Region:',
    itemCultivation: 'Wysokość upraw:',
    itemProcessing: 'Obróbka:',
  );
  CerradoPage({
    Key? key,
  }) : super(key: key);
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5e1d3),
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Text(
          Product.itemName,
          style: GoogleFonts.cinzel(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 220, 200, 191),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => CartPage()),
            ),
            icon: const Icon(
              Icons.shopping_bag_outlined,
              size: 32,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 30, bottom: 10, left: 30, right: 30),
            child: Container(
              height: 363,
              width: 315,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Image(
                image: AssetImage(Product.imagePath),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 10, left: 30, right: 10),
                child: Text(
                  Product.itemName,
                  style: GoogleFonts.cinzel(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 10, left: 40, right: 30),
                child: Text(
                  Product.itemSpecies,
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 10, left: 30, right: 30),
            child: Text(
              'Czekolada, karmel, owoce jagodowe, orzechy.',
              style: GoogleFonts.montserrat(fontSize: 15),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 10, left: 30, right: 30),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                Product.itemDescription,
                textAlign: TextAlign.justify,
                style: GoogleFonts.montserrat(fontSize: 15, height: 2),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 30, bottom: 10, left: 30, right: 10),
            child: Text(
              'Specyfikacja:',
              style: GoogleFonts.cinzel(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 30, right: 5),
                child: Text(
                  Product.itemCountry,
                  style: GoogleFonts.montserrat(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Expanded(
                child: Divider(
                    thickness: 0.5, color: Color.fromARGB(255, 51, 49, 49)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 5, right: 30),
                child: Text(
                  'Brazylia',
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 30, right: 5),
                child: Text(
                  Product.itemRegion,
                  style: GoogleFonts.montserrat(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Expanded(
                child: Divider(
                    thickness: 0.5, color: Color.fromARGB(255, 51, 49, 49)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 5, right: 30),
                child: Text(
                  'Cerrado Mineiro',
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 30, right: 5),
                child: Text(
                  Product.itemCultivation,
                  style: GoogleFonts.montserrat(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Expanded(
                child: Divider(
                    thickness: 0.5, color: Color.fromARGB(255, 51, 49, 49)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 5, right: 30),
                child: Text(
                  '1100 m.n.p.m',
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 30, right: 5),
                child: Text(
                  Product.itemProcessing,
                  style: GoogleFonts.montserrat(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const Expanded(
                child: Divider(
                    thickness: 0.5, color: Color.fromARGB(255, 51, 49, 49)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 10, left: 5, right: 30),
                child: Text(
                  'Naturalna',
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 30, bottom: 20, left: 30, right: 10),
            child: Text(
              'Wielkość opakowania:',
              style: GoogleFonts.cinzel(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.only(
                          top: 13, bottom: 13, left: 22, right: 22),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 255, 255, 255),
                    )),
                child: Text(
                  '250g',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 160, 80, 48),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.only(
                          top: 13, bottom: 13, left: 22, right: 22),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 255, 255, 255),
                    )),
                child: Text(
                  '500g',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 160, 80, 48),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.only(
                          top: 13, bottom: 13, left: 28, right: 28),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 255, 255, 255),
                    )),
                child: Text(
                  '1kg',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 160, 80, 48),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 40, bottom: 10, left: 30, right: 13),
            child: Text(
              'Ziarna czy zmielona?',
              style: GoogleFonts.cinzel(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // ignore: sort_child_properties_last
                    child: Image.asset('images/coffee-beans.png'),
                    height: 62,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset('images/coffee-maker.png'),
                    height: 62,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset('images/chemex.png'),
                    height: 62,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset('images/aeropress.png'),
                    height: 62,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset('images/coffee-pot.png'),
                    height: 62,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 1, bottom: 40, left: 40, right: 10),
                child: Text(
                  'Ziarna',
                  style: GoogleFonts.montserrat(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 1, bottom: 40, left: 24, right: 10),
                child: Text(
                  'Przelew',
                  style: GoogleFonts.montserrat(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 1, bottom: 40, left: 20, right: 10),
                child: Text(
                  'Chemex',
                  style: GoogleFonts.montserrat(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 1, bottom: 40, left: 13, right: 10),
                child: Text(
                  'Aeropress',
                  style: GoogleFonts.montserrat(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 1, bottom: 40, left: 10, right: 10),
                child: Text(
                  'Kawiarka',
                  style: GoogleFonts.montserrat(fontSize: 12),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                width: 30,
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () => c.increment(),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Obx(() => SizedBox(
                        width: 30,
                        child: Text(
                          c.coffee.toString(),
                          style: GoogleFonts.montserrat(fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () => c.decrement(),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12, bottom: 10, left: 60, right: 5),
                    child: Text('Cena:',
                        style: GoogleFonts.montserrat(fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12, bottom: 10, left: 10, right: 40),
                    child: Text(
                      '33zł',
                      style: GoogleFonts.montserrat(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: MaterialButton(
              onPressed: () {},
              child: Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 160, 80, 48),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    'Dodaj do koszyka',
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


      // body: Expanded(
      //   child: Consumer<CartModel>(
      //     builder: (context, value, child) {
      //       return ListView.builder(
      //         itemBuilder: ((context, index) {
      //           return ProductContent(
      //             itemName: value.shopItems[index][0],
      //             itemPrice: value.shopItems[index][1],
      //             imagePath: value.shopItems[index][2],
      //             color: value.shopItems[index][3],
      //           );
      //         }),
      //       );
      //     },
      //   ),
      // ),