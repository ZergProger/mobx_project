import 'package:flutter/material.dart';
import 'package:mobx_project/main.dart';
import 'package:mobx_project/mobx/register_form.dart';

class PopupPage extends StatelessWidget {
  PopupPage({super.key, RegisterForm? dataValidation})
      : dataValidation = dataValidation ?? RegisterForm();

  final RegisterForm dataValidation;
  final Map<String, List<String>> regions = {
    'Киевская': ['Броварской', 'Вышгородский', 'Обуховский'],
    'Львовская': ['Дрогобычский', 'Стрыйский', 'Червоноградский'],
    'Одесская': ['Белгород-Днестровский', 'Измаильский', 'Подольский'],
  };

  String? selectedRegion;
  String? selectedDistrict;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          PopupMenuButton(
            onSelected: (value) {
              selectedRegion = dataValidation.selectedRegion;
              selectedDistrict = dataValidation.selectedDistrict;
               dataValidation.selectedRegAndReset(value);
            },
              itemBuilder: (context) => regions.keys
                  .map((region) =>
                      PopupMenuItem(value: region, child: Text(region)))
                  .toList(),
                  child: ListTile(
                title: Text(selectedRegion ?? 'Выберите область'),
                trailing: const Icon(Icons.arrow_drop_down),
                tileColor: Colors.grey[200],
              ),
            ),
                  const SizedBox(height: 1,),
          PopupMenuButton(itemBuilder: (context) => )
        ],
      ),
    ));
  }
}
