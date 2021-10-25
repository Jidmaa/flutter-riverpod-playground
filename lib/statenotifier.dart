import 'package:clothes_shop/riverpod/providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateTest extends ConsumerWidget {
  @override
  Widget build(
    BuildContext context,
    ScopedReader watch,
  ) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: watch(userProvider).when(
                data: (String value) {
                  return Text(value);
                },
                error: (error, stackTrace) => Text("error"),
                loading: () => CircularProgressIndicator(),
              ),
            ),
            Center(child: FloatingActionButton.extended( label: Text("Cool button"), icon: Icon(Icons.thumb_up),  onPressed: () => print("cc"))),
          ],
        ),
      ),
    );
  }
}
