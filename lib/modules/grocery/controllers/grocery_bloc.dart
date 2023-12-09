import 'package:flutter_bloc/flutter_bloc.dart';

import '../x_groceries.dart';

part 'grocery_event.dart';
part 'grocery_state.dart';

class GroceryBloc extends Bloc<GroceryEvent, GroceryState> {
  GroceryBloc() : super(GroceryInitialState()) {
    on<GroceryInitialEvent>(handleGoceryInitialEvent);
    on<GroceryInitialFetchEvent>(handleFetchGocery);
    on<GroceryAddEvent>(handleAddGocery);
  }

  Future<void> handleGoceryInitialEvent(event, emit) async {
    // print('handleGoceryInitialEvent Clicked');
    emit(GroceryFetchLoadingState());
    await Future.delayed(Duration(seconds: 3));
    emit(
      GroceryFetchSuccessState(
        data: GroceryData.groceryItems
            .map((e) => GroceryModel(
                id: e['id'],
                name: e['name'],
                description: e['description'],
                price: e['price'],
                imageUrl: e['imageUrl']))
            .toList(),
      ),
    );
  }

  Future<void> handleFetchGocery(event, emit) async {
    print('handleFetchGocery Clicked');
  }

  Future<void> handleAddGocery(event, emit) async {
    print('handleAddGocery Clicked');
  }
}
