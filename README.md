


##  Hero Widget [('Source Code')](https://github.com/Aksharpatel06/adv_flutter_animation/tree/master/lib/view/task_2/screen)

The `Hero` widget in Flutter is used to create a seamless transition effect between two screens. When navigating between screens, the `Hero` widget makes it appear as if a widget on the first screen is flying or transitioning smoothly to the corresponding widget on the second screen. This can create visually appealing animations that enhance the user experience.

### Key Features of `Hero` Widget

- **Tag**: The `Hero` widget uses a unique tag to identify the widgets involved in the animation. Both the source and destination `Hero` widgets must have the same tag.
- **Flight Animation**: When navigating from one screen to another, the widget identified by the tag will appear to fly from its position on the first screen to its position on the second screen.
- **Child**: The `Hero` widget wraps around the widget that you want to animate. This child widget will be the one that appears to fly between screens.

### Example Usage

Here's a simple example of how to use the `Hero` widget:

**Screen 1:**

```dart
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child: Hero(
            tag: 'hero-example',
            child: Icon(
              Icons.star,
              size: 50.0,
            ),
          ),
        ),
      ),
    );
  }
}
```

**Screen 2:**

```dart
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Hero(
          tag: 'hero-example',
          child: Icon(
            Icons.star,
            size: 150.0,
          ),
        ),
      ),
    );
  }
}
```

In this example:
- The `Hero` widget is used on both screens with the same `tag` value (`'hero-example'`).
- When you tap on the star icon on the first screen, it will transition to the second screen where the star icon is displayed in a larger size.

This creates a smooth animation that visually connects the two screens, enhancing the user experience.

### Best Practices
- Ensure that the `tag` is unique within the context of the transition.
- The child of the `Hero` widget should be identical in both screens for the best visual effect.
- Use the `Hero` widget to improve navigation experience, particularly when you want to emphasize the connection between two elements on different screens.

### ScreenShoets


<p align='center'>
  <img src='https://github.com/user-attachments/assets/36c53f1f-43a3-4143-85f3-84074bb231be' width=240>
   <img src='https://github.com/user-attachments/assets/ccebf6da-8443-4cb3-97cf-6c20db23146f' width=240>
</p>

### video

https://github.com/user-attachments/assets/6a31e507-a50b-4d70-ab21-0840d17a140b
