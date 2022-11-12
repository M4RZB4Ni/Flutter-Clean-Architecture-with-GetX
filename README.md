# Flutter Clean Architecture with GetX state management



Flutter Clean Architecture

All Requirements like :
1-Download image
2-cache images
3-set to background
4-download progress indicator
5-tests
were implemented.

for state-management and DI and navigation I used GetX and I can use any other state-managements instead GetX.
The Architecture of App is MVVM.
i did not use GetX in app custom components(like imageView,ListView and etc) because i want to components be pure
to when i want to change state-management or use my components to another project the were independent from any state-managements.


this project use this libraries:
1-GetX
2-Build Runner
3-Freezed


before run project execute these commands in terminal:

1-flutter pub get
2-flutter packages pub run build_runner build --delete-conflicting-outputs

and remember to turn on your VPN before start application (the webservice is filter).

Best Wishes
Hamidreza


