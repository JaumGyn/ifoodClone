import 'package:flutter/material.dart';
import 'package:ifood_flutter_clone/core/theme/app_colors.dart';
import 'package:ifood_flutter_clone/core/theme/app_icons.dart';

class BottonnavigatorComponent extends StatelessWidget {
  const BottonnavigatorComponent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  AppIcon(AppIcons.homeActive),
                  Text("Início"),
                ],
              ),
              Text("Busca"),
              Text("Pedidos"),
              Text("Perfil")
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).padding.bottom,
          )
        ],
      ),
    );
  }
}
