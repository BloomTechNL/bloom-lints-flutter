import 'package:example/foo.dart'; // prefer_relative_imports

void main() {
  const String hello = 'Hello';
  final String world = 'World'; // prefer_const_declarations
  final Foo foo;

  final String? bar = 'bar';
  final barString = bar!; // avoid-non-null-assertion

  print('Avoid this print'); // avoid_print
}

abstract class Base {
  int methodA(int foo);
  String methodB(String foo);
}

class Sub extends Base {
  @override
  int methodA(int foo) => foo;

  @override
  String methodB(String bar) => bar; // avoid_renaming_method_parameters
}