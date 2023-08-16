import 'package:eticaret/components/custom_appbar.dart';
import 'package:eticaret/components/custom_bottom_nav_bar.dart';
import 'package:eticaret/riverpod/base_scaffold_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final baseScaffoldRiverpod =
    ChangeNotifierProvider((ref) => BaseScaffoldRiverpod());

class BaseScaffold extends ConsumerStatefulWidget {
  const BaseScaffold({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends ConsumerState<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomNavBar(),
      body: ref.watch(baseScaffoldRiverpod).body(),
    );
  }
}
