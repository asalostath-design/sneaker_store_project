import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../models/product.dart';
import '../widgets/custom_widgets.dart';
import '../widgets/details_widget.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.favorite, color: AppColors.red),
              onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.share_outlined, color: AppColors.black),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(product.image, height: 250),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  Text(product.price,
                      style: const TextStyle(
                          fontSize: 20,
                          color: AppColors.primaryBlue,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 20),
                      const Icon(Icons.star, color: Colors.amber, size: 20),
                      const Icon(Icons.star, color: Colors.amber, size: 20),
                      const Icon(Icons.star_half,
                          color: Colors.amber, size: 20),
                      const SizedBox(width: 5),
                      Text("${product.rating} (${product.reviews} reviews)",
                          style: const TextStyle(color: AppColors.darkGrey)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text("Description",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text(
                    product.description ?? "",
                    style:
                    const TextStyle(color: AppColors.darkGrey, height: 1.5),
                  ),
                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Select Size",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("Size Guide",
                          style: TextStyle(color: AppColors.primaryBlue)),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizeItem(size: "40", onTap: () {}),
                      SizeItem(size: "41", isSelected: true, onTap: () {}),
                      SizeItem(size: "42", onTap: () {}),
                      SizeItem(size: "43", onTap: () {}),
                      SizeItem(size: "44", onTap: () {}),
                      SizeItem(size: "45", onTap: () {}),
                    ],
                  ),
                  const SizedBox(height: 20),

                  const Text("Colors",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      ColorItem(color: Colors.black, onTap: () {}),
                      ColorItem(color: Colors.grey.shade300, onTap: () {}),
                      ColorItem(color: AppColors.primaryBlue, onTap: () {}),
                    ],
                  ),
                  const SizedBox(height: 30),

                  CustomButton(
                    text: "Add to Cart",
                    icon: Icons.shopping_cart_outlined,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
