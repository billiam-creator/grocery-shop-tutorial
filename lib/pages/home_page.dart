import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/components/grocery_item_tile.dart';
import 'package:grocery_app/models/cart_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48,),
            //good morning
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Good Morning",
              ),
            ),
        const SizedBox(height: 8,),
            //Let's order items for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
               "Let's order items for you",
                  style: GoogleFonts.notoSerif(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            ),
            ),

            const SizedBox(height: 24,),
        
            //divider
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(),
            ),

            const SizedBox(height: 24,),
        
            //fresh items + grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Fresh Items",
              style: TextStyle(fontSize: 16),
              ),
            ),

            Expanded(child: Consumer<CartModel>
            (builder: (context, value, child) {
              return GridView.builder(
                itemCount: value.shopItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
               itemBuilder: (context, index) {
                return GroceryItemTile(
                  itemName: value.shopItems[index] [0],
                   itemPrice: value.shopItems[index] [1],
                    imagePath: value.shopItems[index] [2],
                     color: value.shopItems[index] [3],);
               },  );
            },))
          ],
        ),
      ),
    );
  }
}