# Bloom Lints

This package contains a recommended set of lints by [Bloom] for [Flutter] apps, packages,
and plugins to encourage good coding practices.

This package is built on top of Flutter's recommended set of lints from
[package:flutter_lints].

## Usage

1. Depend on this package as a **dev_dependency**. Since this package is not 
   yet published on pub.dev we need to use a git reference.

```yaml
dev_dependencies:
   bloom_lints:
       git:
         url: git@github.com:BloomTechNL/bloom-lints-flutter.git
         ref: main
```

2. Create an `analysis_options.yaml` file at the root of the package (alongside
   the `pubspec.yaml` file) and `include: package:bloom_lints/bloom.yaml`
   from it.

```yaml
# This file configures the analyzer, which statically analyzes Dart code to
# check for errors, warnings, and lints.
#
# The issues identified by the analyzer are surfaced in the UI of Dart-enabled
# IDEs (https://dart.dev/tools#ides-and-editors). The analyzer can also be
# invoked from the command line by running `flutter analyze`.

# The following line activates a set of recommended lints for Flutter apps,
# packages, and plugins designed to encourage good coding practices.
include: package:bloom_lints/bloom.yaml

linter:
  # The lint rules applied to this project can be customized in the
  # section below to disable rules from the `package:flutter_lints/flutter.yaml`
  # included above or to enable additional rules. A list of all available lints
  # and their documentation is published at
  # https://dart-lang.github.io/linter/lints/index.html.
  #
  # Instead of disabling a lint rule for the entire project in the
  # section below, it can also be suppressed for a single line of code
  # or a specific dart file by using the `// ignore: name_of_lint` and
  # `// ignore_for_file: name_of_lint` syntax on the line or in the file
  # producing the lint.
  rules:
    # avoid_print: false  # Uncomment to disable the `avoid_print` rule
    # prefer_single_quotes: true  # Uncomment to enable the `prefer_single_quotes` rule

# Additional information about this file can be found at
# https://dart.dev/guides/language/analysis-options
```

[Bloom]: https://bloom-technologies.nl
[Flutter]: https://flutter.dev
[package:flutter_lints]: https://pub.dev/packages/flutter_lints