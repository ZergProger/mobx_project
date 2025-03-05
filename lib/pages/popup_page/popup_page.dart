import 'package:flutter/material.dart';
import 'package:mobx_project/mobx/register_form.dart';
import 'package:mobx_project/pages/sfp_page/sfp_page.dart';

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

  @override
  Widget build(BuildContext context) {
    super.build(context);
    List<String> districts = widget.dataValidation.selectedRegion != null
        ? regions[widget.dataValidation.selectedRegion]!
        : [];
    return Scaffold(
      appBar: AppBar(
        title: const Text('popup menu'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SfpPage(),
                    ));
              },
              icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            PopupMenuButton(
              onSelected: (value) {
                setState(() {
                  widget.dataValidation.selectedRegAndReset(value);
                });
              },
              itemBuilder: (context) => regions.keys
                  .map((region) =>
                      PopupMenuItem(value: region, child: Text(region)))
                  .toList(),
              child: ListTile(
                title: Text(
                    widget.dataValidation.selectedRegion ?? 'Выберите область'),
                trailing: const Icon(Icons.arrow_drop_down),
                tileColor: Colors.grey[200],
              ),
            ),
            const SizedBox(height: 10),
            PopupMenuButton(
              onSelected: (value) {
                setState(() {
                  widget.dataValidation.onSelectedPopum(value);
                });
              },
              itemBuilder: (context) => districts
                  .map((district) =>
                      PopupMenuItem(value: district, child: Text(district)))
                  .toList(),
              child: ListTile(
                title: Text(
                    widget.dataValidation.selectedDistrict ?? 'Выберите район'),
                trailing: const Icon(Icons.arrow_drop_down),
                tileColor: Colors.grey[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
