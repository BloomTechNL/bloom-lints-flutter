import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/error/error.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class AvoidReturningWidgets extends DartLintRule {
  AvoidReturningWidgets() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_returning_widgets',
    problemMessage: 'Avoid returning widgets',
    correctionMessage: 'Use a class instead of a function.',
    errorSeverity: ErrorSeverity.INFO,
  );

  @override
  void run(CustomLintResolver resolver, ErrorReporter reporter, CustomLintContext context) {
    {
      context.registry.addClassMember((node) {
        for (final child in node.childEntities) {
          if (child is! NamedType) return;

          final typeMatches = RegExp(r'\w+').allMatches(child.type.toString());

          for (final match in typeMatches) {
            if (match.group(0) == 'Widget') return reporter.reportErrorForNode(code, child);
          }

          final implementMatches = RegExp(r'\w+').allMatches(child.element.toString());

          for (final match in implementMatches) {
            if (['StatelessWidget', 'StatefulWidget'].contains(match.group(0)))
              return reporter.reportErrorForNode(code, child);
          }
        }
      });
    }
  }
}
