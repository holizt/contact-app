import '../modules/home_page/controller/home_controller.dart';
import '../constant/colors.dart';
import 'package:flutter/material.dart';

class CustomField extends StatefulWidget {
  final TextEditingController controller;

  const CustomField({Key? key, required this.controller}) : super(key: key);

  @override
  State<CustomField> createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      style:
          Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.grey),
      decoration: InputDecoration(
        hintText: 'Search Contacts',
        hintStyle:
            Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        fillColor: ColorsApp.searchBarColor,
        isDense: true,
        contentPadding: const EdgeInsets.only(left: 16),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
          size: 25,
        ),
      ),
      textAlign: TextAlign.center,
      onChanged: HomeController.to.searchContact,
    );
  }
}
