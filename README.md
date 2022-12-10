# big_burger
A big burger application is developed by flutter.
I use the clean architect for this project.

In the application, we have 2 pages:

    - Menu page:
      + A list of burgers with title, image, description and price.
      + When we have a problem with a call to the api on the server, a template with a button to refresh the page is shown.
      + When we tap on a burger item, a bottom sheet is shown with a detail of the burger. We can add or remove the quantity of the item. Click the "Total" button at the bottom to confirm.
      + When we have an order, a button of "View order" is shown to go to the cart page.

    - Cart page:
      + A detail of orders
      + When we tap on an order item, we can change the quantity of selected item.

## Getting Started

  1. flutter pub get
  2. flutter pub run build_runner build --delete-conflicting-outputs
  3. flutter run

## Mockito test

  1. flutter pub run build_runner build or flutter pub run build_runner build --delete-conflicting-outputs
  2. flutter test test/mocking/mock_api_test.dart
