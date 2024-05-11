import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatefulWidget {
  Shoe shoe;
  void Function()?onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  State<ShoeTile> createState() => _ShoeTileState();
}

class _ShoeTileState extends State<ShoeTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          //Shoe pic
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(widget.shoe.imagePath)),

          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              widget.shoe.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          //price+details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Shoe name
                    Text(
                      widget.shoe.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    //box to create a space between the texts
                    const SizedBox(
                      height: 5,
                    ),
                    //Price
                    Text(
                      '\$' + widget.shoe.price,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                        ),
                      ),
                      child: const Icon(Icons.add,color: Colors.white,)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
