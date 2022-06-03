import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_project/src/blocs/user_info/user_info_bloc.dart';
import 'package:test_project/src/components/widgets/cached_network_image_widget.dart';
import 'package:test_project/src/components/widgets/page_widget.dart';
import 'package:test_project/src/components/widgets/user_name_widget.dart';
import 'package:test_project/src/models/user_entity.dart';

class UserInfoPage extends StatelessWidget {
  final UserEntity user;

  const UserInfoPage({required this.user, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserInfoCubit, UserInfoState>(
      listener: (context, state) {
        if (state.navigateBack) AutoRouter.of(context).pop("Close user info page");
      },
      child: PageWidget(
        appBar: AppBar(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Hero(
                tag: "user ${user.id}",
                child: CachedNetworkImageWidget(
                  imageUrl: user.imageUrl,
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              UserNameWidget(
                userFullName: user.fullName(),
              ),
              const SizedBox(
                height: 24.0,
              ),
              TextButton(
                onPressed: () {
                  BlocProvider.of<UserInfoCubit>(context).printLog();
                },
                child: const Text("Back button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
