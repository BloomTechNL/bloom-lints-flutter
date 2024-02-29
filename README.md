# Bloom Lints

A recommended set of linter rules by [Bloom] for [Flutter] and [Dart] apps, packages, and plugins to encourage good coding practices.

> [!NOTE]
> Most of these rules are based on the [very_good_analysis] package, but with some modifications to better fit our needs, primarily by setting the error level of most rules to `warning` instead of `info`, since none of our pull requests will merge if any analysis errors are present anyway.

## Variants

There are two rule variants to choose from when using this package.

### `package_rules.yaml`

This is the base set of linter rules that should be used for all packages and plugins. It is the most strict set of rules.

### `app_rules.yaml`

Based on the `package_rules.yaml` file, this set of linter rules is less strict and is intended to be used for Flutter apps. It disables the following rules to make developing apps more convenient.

- `package_api_docs`: Disabled because it is not always necessary to document every package in the app.
- `public_member_api_docs`: Disabled because it is not always necessary to document every public member in an app.

## Usage

1. Depend on this package as a **dev_dependency**. Since this package is not
   yet published on pub.dev we need to use a git reference.

```yaml
dev_dependencies:
  bloom_lints:
    git:
      url: https://github.com/BloomTechNL/bloom-lints-flutter
      ref: main
```

2. Create an `analysis_options.yaml` file at the root of the package (alongside
   the `pubspec.yaml` file) and `include: package:bloom_lints/package_rules.yaml` or `include: package:bloom_lints/app_rules.yaml` to activate the linter rules.

```yaml
# This file configures the analyzer, which statically analyzes Dart code to
# check for errors, warnings, and lints.
#
# The issues identified by the analyzer are surfaced in the UI of Dart-enabled
# IDEs (https://dart.dev/tools#ides-and-editors). The analyzer can also be
# invoked from the command line by running `flutter analyze`.

# A recommended set of linter rules by Bloom for Flutter and Dart apps, packages,
# and plugins to encourage good coding practices.
include: package:bloom_lints/package_rules.yaml

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
[Dart]: https://dart.dev
[very_good_analysis]: https://pub.dev/packages/very_good_analysis
