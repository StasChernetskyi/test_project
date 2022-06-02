import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/src/blocs/user_info/user_info_cubit.dart';
import 'package:test_project/src/components/widgets/page_widget.dart';
import 'package:test_project/src/components/widgets/user_name_widget.dart';
import 'package:test_project/src/models/user_entity.dart';

class UserInfoPage extends StatelessWidget {
  final UserEntity user;

  const UserInfoPage({required this.user, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserInfoCubit>(
      create: (_) => UserInfoCubit(),
      child: PageWidget(
        appBar: AppBar(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Hero(
                tag: "user ${user.id}",
                child: Image.network(
                  user.imageUrl,
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              UserNameWidget(firstName: user.firstName, lastName: user.lastName),
              const SizedBox(
                height: 24.0,
              ),
              Builder(
                builder: (context) => TextButton(
                  onPressed: () {
                    BlocProvider.of<UserInfoCubit>(context).printLog();
                    AutoRouter.of(context).pop("Close user info page");
                  },
                  child: const Text("Back button"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
