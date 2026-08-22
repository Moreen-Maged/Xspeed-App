import 'package:flutter/material.dart';
import 'package:test1/Models/product_model.dart';
import 'package:test1/Screens/product_details_screen.dart';

class homeBestsellerImage extends StatefulWidget {
  final ProductModel product;
  homeBestsellerImage({super.key, required this.product});

  @override
  State<homeBestsellerImage> createState() => _homeBestsellerImageState();
}

class _homeBestsellerImageState extends State<homeBestsellerImage> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final hasDiscount = widget.product.beforediscountprice != null;
    final discountPercent = hasDiscount
        ? (((widget.product.beforediscountprice! - widget.product.price) /
                      widget.product.beforediscountprice!) *
                  100)
              .round()
        : 0;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(product: widget.product),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              children: [
                Image.network(
                  widget.product.image,
                  width: (size.width * 0.5),
                  height: size.height * 0.38,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: size.width * 0.032,
                  top: size.height * 0.015,
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.85),
                    child: IconButton(
                      icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: isFavorite ? Colors.red : Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                    ),
                  ),
                ),

                if (hasDiscount)
                  Positioned(
                    left: size.height * 0.014,
                    top: size.height * 0.015,
                    child: Container(
                      height: 28,
                      width: 46,
                      child: Center(
                        child: Text(
                          "-$discountPercent%",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                if (widget.product.isNew)
                  Positioned(
                    left: size.height * 0.014,
                    bottom: size.height * 0.015,
                    child: Container(
                      height: 28,
                      width: 46,
                      child: Center(
                        child: Text(
                          "New",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                if (widget.product.isExclusive)
                  Positioned(
                    left: widget.product.isNew
                        ? size.height * 0.074
                        : size.height * 0.014,
                    bottom: size.height * 0.015,
                    child: Container(
                      height: 28,
                      width: 80,
                      child: Center(
                        child: Text(
                          "Exclusive",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Text(
            widget.product.title,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          Text(
            widget.product.subtitle,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              if (hasDiscount) ...[
                Text(
                  "\$${widget.product.beforediscountprice}",
                  style: TextStyle(
                    fontSize: 14,
                    decoration: TextDecoration.lineThrough,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
              ],
              Text(
                "\$${widget.product.price}",
                style: TextStyle(
                  fontSize: 14,
                  color: hasDiscount ? Colors.red : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
