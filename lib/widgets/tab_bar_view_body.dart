import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/models/user_model.dart';
import 'package:task/services/api_service.dart';
import 'package:task/services/users_service.dart';
import 'package:task/utils/extensions.dart';
import 'package:task/utils/lists.dart';
import 'package:task/utils/strings.dart';
import 'package:task/widgets/categories_header.dart';
import 'package:task/widgets/empty_view_data.dart';
import 'package:task/widgets/error_message.dart';
import 'package:task/widgets/loading_data.dart';
import 'package:task/widgets/not_empty_view_data.dart';

class TabBarViewBody extends StatefulWidget {
  const TabBarViewBody({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  State<TabBarViewBody> createState() => _TabBarViewBodyState();
}

class _TabBarViewBodyState extends State<TabBarViewBody> {
  var future;
  @override
  void initState() {
    // get users from api
    future = UsersService(apiService: ApiService(Dio())).getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450.h,
      child: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: widget.tabController,
        children: [
          // first tab view, build data with future builder and calling get users request
          FutureBuilder<List<UserModel>>(
              future: future,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data!.isEmpty) {
                    return EmptyViewData(tabLabel: Lists.tabs[0]);
                  } else {
                    return Column(
                      children: [
                        const FirstTabViewHeader(headerLabel: AppStrings.users),
                        20.height,
                        Expanded(
                          child: NotEmptyViewData(
                            listItems: snapshot.data!,
                          ),
                        ),
                      ],
                    );
                  }
                } else {
                  if (snapshot.hasError) {
                    return  ErrorMessage(
                      message: snapshot.error.toString(),
                    );
                  } else {
                    return const LoadingData();
                  }
                }
              }),

          // second tab view
          Lists.secondTabViewItems.isNotEmpty
              ? Container()
              : EmptyViewData(tabLabel: Lists.tabs[1]),
          // third tab view
          Lists.thirdTabViewItems.isNotEmpty
              ? Container()
              : EmptyViewData(tabLabel: Lists.tabs[2]),
        ],
      ),
    );
  }
}
