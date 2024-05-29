import 'package:flutter/material.dart';
import 'package:pockety/ui/widgets/common/spendings_list/spendings_list.dart';
import 'package:stacked/stacked.dart';

import 'my_spendings_viewmodel.dart';

class MySpendingsView extends StackedView<MySpendingsViewModel> {
  const MySpendingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MySpendingsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Spendings'),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SpendingsList(),
    );
  }

  @override
  MySpendingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MySpendingsViewModel();
}
