import 'package:flutter/material.dart';
import 'package:flutter_app/configs/x_configs.dart';
import 'package:flutter_app/helpers/x_helpers.dart';
import 'package:flutter_app/modules/grocery/x_groceries.dart';

class GroceryTile extends StatelessWidget {
  final GroceryModel dtModel;
  final GroceryBloc bloc;
  GroceryTile({super.key, required this.dtModel, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kAppPrimary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(dtModel.imageUrl))),
          ),
          SizedBox(height: 5),
          Text(dtModel.name, style: getFont(18, isBold: true)), //
          Text(dtModel.description),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$" + dtModel.price.toString(),
                  style: getFont(18, isBold: true)),
              //
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        print('Clicked');
                        // homeBloc.add(HomeProductWishlistButtonClickedEvent(
                        //     clickedProduct: productDataModel));
                      },
                      icon: Icon(Icons.favorite_border)),
                  IconButton(
                      onPressed: () {
                        print('Clicked');
                        // homeBloc.add(HomeProductCartButtonClickedEvent(
                        //     clickedProduct: productDataModel));
                      },
                      icon: Icon(Icons.shopping_bag_outlined)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
