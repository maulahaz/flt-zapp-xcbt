import 'package:flutter/material.dart';
import 'package:flutter_app/modules/grocery/controllers/grocery_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'parts/grocery_tile.dart';

// import '../x_groceries.dart';

class GroceryPage extends StatefulWidget {
  const GroceryPage({super.key});

  @override
  State<GroceryPage> createState() => _GroceryPageState();
}

class _GroceryPageState extends State<GroceryPage> {
  final GroceryBloc groceryBloc = GroceryBloc();

  @override
  void initState() {
    groceryBloc.add(GroceryInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLoC: Groceries Local API'),
        centerTitle: true,
      ),
      body: BlocConsumer<GroceryBloc, GroceryState>(
          bloc: groceryBloc,
          listener: (context, state) {},
          builder: (context, state) {
            if (state is GroceryFetchLoadingState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is GroceryFetchSuccessState) {
              // print(state.data.length);
              return ListView.builder(
                  itemCount: state.data.length,
                  itemBuilder: (context, index) {
                    return GroceryTile(
                        bloc: groceryBloc, dtModel: state.data[index]);
                  });
            }
            if (state is GroceryFetchErrorState) {
              return Center(child: Text('Error'));
            } else {
              return Container();
            }
          }),
    );
  }
}
