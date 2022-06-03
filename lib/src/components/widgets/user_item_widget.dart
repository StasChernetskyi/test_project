import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_project/src/components/widgets/cached_network_image_widget.dart';

import 'package:test_project/src/components/widgets/user_name_widget.dart';
import 'package:test_project/src/models/user_entity.dart';
import 'package:test_project/src/router/router.gr.dart';

class UserItemWidget extends StatelessWidget {
  final UserEntity user;

  const UserItemWidget({required this.user, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        final answer = await AutoRouter.of(context).push(UserInfoRoute(user: user));
        // ignore: avoid_print
        print(answer);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(
              tag: "user ${user.id}",
              child: CachedNetworkImageWidget(
                imageUrl: user.imageUrl,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            UserNameWidget(
              userFullName: user.fullName(),
            ),
          ],
        ),
      ),
    );
  }
}
