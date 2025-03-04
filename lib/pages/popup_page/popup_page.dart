import 'package:flutter/material.dart';
import 'package:mobx_project/mobx/register_form.dart';

class PopupPage extends StatefulWidget {
  PopupPage({super.key, RegisterForm? dataValidation})
      : dataValidation = dataValidation ?? RegisterForm();

  final RegisterForm dataValidation;

  @override
  State<PopupPage> createState() => _PopupPageState();
}

class _PopupPageState extends State<PopupPage>
    with AutomaticKeepAliveClientMixin {
  final Map<String, List<String>> regions = {
    'Киевская': ['Броварской', 'Вышгородский', 'Обуховский'],
    'Львовская': ['Дрогобычский', 'Стрыйский', 'Червоноградский'],
    'Одесская': ['Белгород-Днестровский', 'Измаильский', 'Подольский'],
  };

  @override
  bool get wantKeepAlive => true;

  String? selectedRegion;

  String? selectedDistrict;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    List<String> districts =
        selectedRegion != null ? regions[selectedRegion]! : [];
    return Scaffold(
        appBar: AppBar(
          title: Text('popup menu'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              PopupMenuButton(
                onSelected: (value) {
                  selectedRegion = widget.dataValidation.selectedRegion;
                  selectedDistrict = widget.dataValidation.selectedDistrict;
                  widget.dataValidation.selectedRegAndReset(value);
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
              const SizedBox(
                height: 1,
              ),
              PopupMenuButton(
                onSelected: widget.dataValidation.onSelectedPopum,
                itemBuilder: (context) => districts
                    .map((district) =>
                        PopupMenuItem(value: district, child: Text(district)))
                    .toList(),
                child: ListTile(
                  title: Text(selectedDistrict ?? 'Выберите район'),
                  trailing: const Icon(Icons.arrow_drop_down),
                  tileColor: Colors.grey[200],
                ),
                enabled: selectedRegion != null,
              ),
              ElevatedButton(
                  onPressed: widget.dataValidation.popupButton(context),
                  child: Text('submit'))
            ],
          ),
        ));
  }
}
