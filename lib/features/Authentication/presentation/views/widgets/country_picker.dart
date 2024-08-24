import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:shoply/core/utils/app_colors.dart';
import 'package:shoply/core/utils/assets.dart';

class CountryPicker extends StatefulWidget {
  const CountryPicker({super.key, required this.update});
  final void Function(int) update;

  @override
  State<CountryPicker> createState() => _CountryPickerState();
}

class _CountryPickerState extends State<CountryPicker> {
  String countryCode = '1';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showTheCountryPicker(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.grey1),
        ),
        child: Row(
          children: [
            Text(
              "+$countryCode",
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 4),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Transform.rotate(
                angle: -1.570796327,
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showTheCountryPicker(BuildContext context) {
    showCountryPicker(
      onSelect: (Country country) {
        countryCode = country.phoneCode;
        widget.update(country.example.length);
        setState(() {});
      },
      context: context,
      showPhoneCode: true,
      countryListTheme: CountryListThemeData(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        inputDecoration: InputDecoration(
          hintText: 'Search Here...',
          hintStyle: _buildHintStyle(),
          prefixIcon: _buildPrefix(),
          enabledBorder: _buildBorder(),
          focusedBorder: _buildBorder(),
          border: _buildBorder(),
        ),
      ),
    );
  }

  Padding _buildPrefix() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Image.asset(
        Assets.iconsSearch,
        color: AppColors.primaryText,
        height: 24,
      ),
    );
  }

  TextStyle _buildHintStyle() {
    return const TextStyle(
      color: AppColors.grey2,
      fontWeight: FontWeight.normal,
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: AppColors.grey2,
      ),
    );
  }
}
