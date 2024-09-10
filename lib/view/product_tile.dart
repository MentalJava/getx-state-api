import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_state_api/model/product_model.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 60,
                  width: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.network(
                    product.imageLink,
                    fit: BoxFit.fill,
                  ),
                ),
                Obx(
                  () => CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: IconButton(
                      onPressed: () {
                        product.like.toggle();
                      },
                      icon: product.like.value
                          ? const Icon(Icons.favorite_rounded)
                          : const Icon(Icons.favorite_border),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              product.name,
              maxLines: 2,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 4,
                vertical: 2,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    product.rating.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const Icon(
                    Icons.star,
                    size: 16,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              '\$${product.price}',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
