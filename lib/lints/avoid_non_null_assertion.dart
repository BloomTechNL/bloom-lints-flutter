import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/token.dart';
import 'package:analyzer/error/error.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class AvoidNonNullAssertion extends DartLintRule {
  AvoidNonNullAssertion() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_non_null_assertion',
    problemMessage: 'Avoid non-null assertion',
    correctionMessage:
        'Use `?.` instead of `!`, or assign the value to a variable first, and then check for null.',
    errorSeverity: ErrorSeverity.WARNING,
  );

  @override
  void run(CustomLintResolver resolver, ErrorReporter reporter, CustomLintContext context) {
    {
      context.registry.addVariableDeclaration((node) {
        node.childEntities.forEach((element) {
          if (element is AstNode) {
            if (element.endToken.type == TokenType.BANG) {
              return reporter.reportErrorForNode(code, element);
            }
          }
        });
      });

      context.registry.addArgumentList((node) {
        for (final argument in node.arguments) {
          if (argument.endToken.type == TokenType.BANG) {
            return reporter.reportErrorForNode(code, argument);
          }
        }
      });
    }
  }
}
