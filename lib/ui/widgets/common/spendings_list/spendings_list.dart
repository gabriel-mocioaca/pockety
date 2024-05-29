import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'spendings_list_model.dart';

class SpendingsList extends StackedView<SpendingsListModel> {
  const SpendingsList({super.key});

  @override
  Widget builder(
    BuildContext context,
    SpendingsListModel viewModel,
    Widget? child,
  ) {
    if (viewModel.dataReady) {
      var data = viewModel.data!;
      return Column(
        children: [
          const ListTile(
            title: Row(
              children: [
                Text('Amount'),
                Spacer(),
                Text('Note'),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => ListTile(
                title: Row(
                  children: [
                    Text(
                      data[index].amount.toString(),
                    ),
                    const Spacer(),
                    Text(data[index].note)
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  SpendingsListModel viewModelBuilder(
    BuildContext context,
  ) =>
      SpendingsListModel();
}
