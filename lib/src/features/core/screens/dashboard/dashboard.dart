import 'package:auth/src/constants/colors.dart';
import 'package:auth/src/constants/sizes.dart';
import 'package:auth/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../repository/authentication_repository/authentication_repository.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Variables
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.black),
        title: Text(AppName, style: Theme.of(context).textTheme.headline4),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: CardBgColor),
            child: IconButton(onPressed: (){
              AuthenticationRepository.instance.logout();
            }, icon: Image(image: AssetImage(UserProfileImage),
            ),),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(DashboardPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(DashboardTitle, style: txtTheme.bodyText2),
                Text(DashboardHeading, style: txtTheme.headline2,),
                SizedBox(height: DashboardPadding),

                // Search Box
                Container(
                  decoration: BoxDecoration(
                    border: Border(left: BorderSide(width: 4)),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(DashboardSearch, style: txtTheme.headline2?.apply( color: Colors.grey.withOpacity(0.5),),),
                      Icon(Icons.mic, size: 25),
                    ],
                  ),
                ),
                const SizedBox(height: DashboardPadding),

              ],
            ),
          ),
      ),
    );
  }
}
