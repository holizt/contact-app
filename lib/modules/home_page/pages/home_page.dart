import '/constant/app_routes.dart';
import '/constant/colors.dart';
import '/modules/home_page/controller/home_controller.dart';
import '/widgets/contact_item.dart';
import '/widgets/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manage Contacts',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Center(
            child: Text(
              'Labels',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: ColorsApp.secondaryColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        leadingWidth: 65,
        actions: [
          IconButton(
              onPressed: () => Get.toNamed(Routes.newContact),
              icon: const Icon(
                Icons.add,
                color: ColorsApp.secondaryColor,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            CustomField(
              controller: _controller.searchCtr,
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(child: _buildListContactWidget(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildListContactWidget(BuildContext context) {
    return Obx(() {
      if (_controller.isloading.value) {
        return const Center(
          child: SpinKitFadingCircle(
            color: Colors.black,
          ),
        );
      } else {
        return _controller.list.isNotEmpty
            ? ListView.builder(
                itemCount: _controller.list.length,
                itemBuilder: (_, index) {
                  var contact = _controller.list[index];

                  return ContactItem(
                    name: contact.name ?? 'not found name',
                    count: contact.labels!.length,
                    labels: contact.labels,
                  );
                },
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/opps.jpg',
                      height: 100,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Data not found !!!',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.black),
                    )
                  ],
                ),
              );
      }
    });
  }
}
