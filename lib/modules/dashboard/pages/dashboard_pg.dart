import 'package:flutter/material.dart';
import 'package:flutter_app/configs/x_configs.dart';
import 'package:flutter_app/helpers/x_helpers.dart';
import 'package:flutter_app/modules/dashboard/x_dashboards.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_app/widgets/x_widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final GroceryBloc groceryBloc = GroceryBloc();

  @override
  void initState() {
    super.initState();
    groceryBloc.add(GroceryInitialFetchEvent());
  }

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('BLoC: Jsonplaceholder API'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Clicked:FloatingActionButton');
          groceryBloc.add(GroceryAddEvent());
        },
      ),
      body: BlocConsumer<GroceryBloc, GroceryState>(
          listenWhen: (previous, current) => current is GroceryActionState,
          buildWhen: (previous, current) => current is! GroceryActionState,
          bloc: groceryBloc,
          listener: (context, state) {},
          builder: (context, state) {
            if (state is GroceryFetchLoadingState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is GroceryFetchSuccessState) {
              return Container(
                child: ListView.builder(
                  itemCount: state.data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: kAppPrimary,
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fetch Data ke-${index + 1}',
                            style: getFont(12, isBold: true),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Title: ',
                              style: getFont(12, isBold: true),
                              children: [
                                TextSpan(
                                    text: '${state.data[index].title}',
                                    style: getFont(12, isBold: false)),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Body: ',
                              style: getFont(12, isBold: true),
                              children: [
                                TextSpan(
                                    text: '${state.data[index].body}',
                                    style: getFont(12, isBold: false)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            } else {
              return const SizedBox();
            }
          }),
      // body: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(12),
      //       child: Container(
      //         height: 150,
      //         decoration: BoxDecoration(
      //           color: kAppPrimary[200],
      //           borderRadius: BorderRadius.circular(16),
      //         ),
      //         child: Center(
      //           child: Text('Welcome User'),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       margin: EdgeInsets.only(top: 20),
      //       width: size.width * 0.8,
      //       child: MyButtons.primaryOutlined(context, 'Click Me', () {
      //         // context.read<GroceryBloc>().
      //         groceryBloc.add(GroceryInitialEvent());
      //       }),
      //     ),
      //   ],
      // ),
    );
  }
}
