import 'package:flutter/material.dart';
import '../modules/home_page/models/contact_model.dart';
import '../constant/colors.dart';

class ContactItem extends StatelessWidget {
  final String name;
  final int? count;
  final List<Label>? labels;
  const ContactItem({
    Key? key,
    required this.name,
    this.count,
    this.labels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    name,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: count,
                    reverse: true,
                    itemBuilder: (_, index) {
                      var list = labels![index];
                      return Container(
                        height: 30,
                        margin: const EdgeInsets.only(
                            right: 4, top: 27, bottom: 27),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorsApp.statusColor,
                        ),
                        child: Center(
                          child: Text(
                            list.title,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
