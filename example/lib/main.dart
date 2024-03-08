import 'package:example/foo.dart'; // prefer_relative_imports

void main() {
  // ignore: unused_local_variable, omit_local_variable_types
  const String hello = 'Hello';
  // ignore: unused_local_variable, omit_local_variable_types, prefer_const_declarations
  final String world = 'World';
  // ignore: unused_local_variable
  final Foo foo;

  // ignore: prefer_const_declarations, unnecessary_nullable_for_final_variable_declarations
  final String? bar = 'bar';
  // ignore: unused_local_variable
  final barString = bar!;

  // ignore: avoid_print
  print('Avoid this print');
}

// ignore: public_member_api_docs
abstract class Base {
  // ignore: public_member_api_docs
  int methodA(int foo);
  // ignore: public_member_api_docs
  String methodB(String foo);
}

// ignore: public_member_api_docs
class Sub extends Base {
  @override
  int methodA(int foo) => foo;

  @override
  String methodB(String foo) => foo;
}
