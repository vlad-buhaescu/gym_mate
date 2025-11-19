import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final brickRoot = context.vars['name'].toString().snakeCase;

  final hasDomain = context.vars['hasDomain'] as bool;
  if (!hasDomain) {
    await Directory('$brickRoot/lib/src/domain/').delete(recursive: true);
  }

  final hasReadme = context.vars['hasReadme'] as bool;
  if (!hasReadme) {
    final file = File('$brickRoot/README.md');
    if (await file.exists()) {
      await file.delete();
    }
  }
}
