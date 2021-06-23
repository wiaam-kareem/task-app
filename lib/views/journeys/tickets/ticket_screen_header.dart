import 'package:flutter/material.dart';
import 'package:task_app/views/theme/theme_colors.dart';

class TicketScreenHeader extends StatelessWidget {
  final double width;
  final double height;

  const TicketScreenHeader({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.17,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildAppBarIcon(
                  icon: Icons.shopping_basket_outlined,
                ),
                Text(
                  'Tickets',
                ),
                BuildAppBarIcon(
                  icon: Icons.category_outlined,
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              height: height * 0.04,
              width: width * 0.9,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 3)],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(width * 0.05)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black45,
                    size: 17,
                  ),
                  Text(
                    'بحث',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(color: Colors.black45),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class BuildAppBarIcon extends StatelessWidget {
  final IconData icon;

  const BuildAppBarIcon({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColor.brandBlue, borderRadius: BorderRadius.circular(15)),
        child: Icon(
          icon,
          size: 15,
          color: Colors.white70,
        ),
      ),
    );
  }
}
