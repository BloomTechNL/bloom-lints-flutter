// This is the entrypoint of our custom linter
import 'package:bloom_lints/lints/avoid_returning_widgets.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

import 'lints/avoid_non_null_assertion.dart';

PluginBase createPlugin() => _CustomLinter();

/// A plugin class is used to list all the assists/lints defined by a plugin.
class _CustomLinter extends PluginBase {
  /// We list all the custom warnings/infos/errors
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        AvoidNonNullAssertion(),
        AvoidReturningWidgets(),
      ];
}
