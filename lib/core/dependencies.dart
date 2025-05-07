import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart' show SingleChildWidget;
import 'package:sott/core/client.dart';
import 'package:sott/data/repositories/home_repository.dart';

final List<SingleChildWidget> providers = [
  Provider(create: (context) => ApiClient()),
  Provider(create: (context) => HomeRepository(client: context.read())),
];
