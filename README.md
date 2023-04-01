# Flutter Clean Architecture with GetX state management



Flutter Clean Architecture

All Requirements like :
1-Download image
2-cache images
3-set to background
4-download progress indicator
5-tests
were implemented.

for state management and DI and navigation, I used GetX and I can use any other state-managements instead GetX.
The Architecture of the App is MVVM.
I did not use GetX in-app custom components(like imageView, ListView and etc) because I want them to components be pure
to when I want to change state management or use my components for another project that was independent of any state-managements.


this project uses these libraries:
1-GetX
2-Build Runner
3-Freezed


before running the project executes these commands in the terminal:

1-flutter pub get
2-flutter packages pub run build_runner build --delete-conflicting-outputs

and remember to turn on your VPN before starting the application (the web service is filtered).

Best Wishes
Hamidreza


