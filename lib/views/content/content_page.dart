import 'package:flutter/material.dart';
import 'package:ifood_flutter_clone/core/theme/app_colors.dart';
import 'package:ifood_flutter_clone/core/theme/app_typography.dart';
import 'package:ifood_flutter_clone/views/content/components/botton_navigator_component.dart';
import 'package:ifood_flutter_clone/views/content/components/content_tab_bar_component.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import 'components/header_local_component.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key key}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                HeaderLocalComponent(location: "Rua das flores nº 10"),
                ContentTabBarComponent(
                  controller: tabController,
                  onTap: (index) {},
                )
              ],
            ),
          ),
          BottonnavigatorComponent(),
        ],
      ),
    );
  }
}
