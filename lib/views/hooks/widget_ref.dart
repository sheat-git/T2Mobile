import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

WidgetRef useWidgetRef() => useContext() as WidgetRef;
