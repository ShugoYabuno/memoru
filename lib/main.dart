import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import './edit.dart';

// We create a "provider", which will store a value (here "Hello world").
// By using a provider, this allows us to mock/override the value exposed.
final helloWorldProvider = Provider((_) => 'test');

void main() {
  runApp(
    // For widgets to be able to read providers, we need to wrap the entire
    // application in a "ProviderScope" widget.
    // This is where the state of our providers will be stored.
    ProviderScope(
      child: MaterialApp(
        title: 'test',
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/edit': (context) => Edit(),
        },
      ),
    ),
  );
}

// Note: MyApp is a HookWidget, from flutter_hooks.
class Home extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // To read our provider, we can use the hook "useProvider".
    // This is only possible because MyApp is a HookWidget.
    final String value = useProvider(helloWorldProvider);

    return Scaffold(
        appBar: AppBar(
          title: Text('Example'),
        ),
        body: ListView(
          children: List.generate(10, (int index) {
            return InkWell(
              onTap: () async {
                await Navigator.of(context).pushNamed('/edit');
              },
              child: Card(
                child: ListTile(
                  title: Text("$value$indexああ"),
                  subtitle: Text("サブタイトル"),
                ),
              ),
            );
          }),
        ));
  }
}
