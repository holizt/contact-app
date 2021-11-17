import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/constant/colors.dart';
import '/modules/new_contact/controller/contact_controller.dart';

class NewContactPage extends StatelessWidget {
  NewContactPage({Key? key}) : super(key: key);

  final _controller = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back,
            color: ColorsApp.secondaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'New Contact',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              _buildTextFieldWidget(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          _customTextfieldWidget(
            context,
            title: 'Name',
            hintText: 'Contact name',
          ),
          _customTextfieldWidget(
            context,
            title: 'Email',
            hintText: 'Contact email address',
          ),
          _customTextfieldWidget(
            context,
            title: 'Phone',
            hintText: 'Phone number',
          ),
          _customTextfieldWidget(
            context,
            title: 'Notes',
            hintText: 'Anything about the contact',
          ),
          _customTextfieldWidget(
            context,
            title: 'Labels',
            isLabel: true,
          ),
        ],
      ),
    );
  }

  Widget _customTextfieldWidget(BuildContext context,
      {required String title, String? hintText, bool? isLabel = false}) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: (isLabel == false)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: ColorsApp.secondaryColor,
                        fontWeight: FontWeight.bold)),
                TextField(
                  decoration: InputDecoration(
                      hintText: hintText,
                      hintStyle: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: Colors.grey)),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: ColorsApp.secondaryColor,
                        fontWeight: FontWeight.bold)),
                Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorsApp.statusColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: (_controller.isSMA.value == true)
                                ? Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Teman SMA',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption!
                                            .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      GestureDetector(
                                          onTap: () => _controller.showSMA,
                                          child: const Icon(Icons.close,
                                              color: Colors.black))
                                    ],
                                  )
                                : null,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorsApp.statusColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: (_controller.isOffice.value == true)
                                ? Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Teman Kantor',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption!
                                            .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      GestureDetector(
                                          onTap: () => _controller.showOffice,
                                          child: const Icon(Icons.close,
                                              color: Colors.black))
                                    ],
                                  )
                                : null,
                          ),
                        ),
                        Expanded(child: Container()),
                        GestureDetector(
                            onTap: () => _controller.addAllItem(),
                            child: const Icon(
                              Icons.add,
                              color: ColorsApp.secondaryColor,
                              size: 35,
                            ))
                      ],
                    )),
                const Divider(
                  thickness: 3,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 35, bottom: 8),
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: ColorsApp.secondaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Text('Save',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                )
              ],
            ),
    );
  }
}
