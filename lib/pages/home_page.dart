import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_project/res/app_text_style.dart';
import 'package:test_project/src/blocs/home/home_bloc.dart';
import 'package:test_project/src/components/widgets/page_widget.dart';
import 'package:test_project/src/components/widgets/user_item_widget.dart';
import 'package:test_project/src/service_locator/get_it.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) => HomeCubit(getIt()),
      child: PageWidget(
        appBar: AppBar(
          title: Text(
            "Test project",
            style: AppTextStyle.homeAppBarTitle,
          ),
        ),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.separated(
                itemCount: state.users.length,
                itemBuilder: (context, index) => UserItemWidget(
                  user: state.users[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 24.0,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
