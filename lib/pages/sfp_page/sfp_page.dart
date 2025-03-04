import 'package:flutter/material.dart';

class SfpPage extends StatefulWidget {
  const SfpPage({super.key});

  @override
  State<SfpPage> createState() => _SfpPageState();
}

class _SfpPageState extends State<SfpPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold();
  }
}
