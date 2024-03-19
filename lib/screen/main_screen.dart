import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/provider/main_provider.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref,child) {
        var data = ref.watch(mainProvider);
        return Scaffold(
          appBar: AppBar(
            title: InkWell(
              onTap: (){
                data.chnageName();
              },
                child: Text(data.name)),
          ),
        );
      }
    );
  }
}
