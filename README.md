# music_app

A simple Music Flutter App.

- Domain-Driven Design
- Dependcy injection
- Auto-generated (Servcies, Models)
- Unit Testing
- Widgets Testing
- Hive(noSql Database)

# Flutter Version

3.3.2

## App demo

![](app.gif)

## Dependancies

- cupertino_icons: ^1.0.2
- flutter_svg: ^0.22.0
- flutter_bloc: ^7.3.0
- equatable: ^2.0.3
- injectable: ^1.5.0
- retrofit: ^2.0.1
- json_annotation: ^4.1.0
- intl: ^0.17.0
- hive: ^2.0.4

## Integration Tests

1. Add the integration_test dependency to pubspec.yaml
2. Create the test files.
3. Write the integration test.
4. Run the integration test.

## Test Structure

integration_test folder

1. BasePage: Contains common functionalities shared across different pages.
2. Page Objects: Each screen in the app has a corresponding page object file in the page_objects directory, encapsulating the UI elements and interactions for that screen.
3. Test file: Contains the test flow.

## Run the Test

To run integration tests,first select the device and start it and please use the `flutter test` command. This command will execute all tests in the `integration_test` directory.

```sh
flutter test integration_test
```

To run a specific test,provide path to the file

```sh
flutter test integration_test/app_test.dart
```
