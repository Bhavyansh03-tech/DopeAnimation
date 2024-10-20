# Flutter Lottie Animation Example

This is a simple Flutter app that shows how animations work using the Lottie package. There are two cool animations: one that just plays and one that reacts when you tap on it (like a bookmark animation). 

## Preview
<img src="https://github.com/user-attachments/assets/f192cd1f-1ddf-4850-9373-e9ee3ee092d2" alt="First Screenshot" style="width: 200px; height: auto; margin-right: 10px;">

## How the Code Works

### 1. `SingleTickerProviderStateMixin` - A Helper for Animations
- This is something Flutter uses to keep track of time for animations.
- It helps the app make sure the animation runs smoothly and stops wasting power when it's not visible on the screen.

### 2. `@override void initState()` - Starting Things Up
- When the app first starts, this part runs to set up everything.
- `initState()` is like the starting point, where we prepare the animation controller.

### What is the `AnimationController`?
- Think of it as a remote control for animations. It tells the animation when to start, stop, or go in reverse.
- We set it to last 2 seconds, which means the animation will take 2 seconds to complete.

```dart
@override
void initState() {
  super.initState();
  _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this
  );
}
```

- `vsync: this` is just Flutter's way of saying, "Make sure this animation is only running when it needs to, so we save battery!"

### 3. `@override void dispose()` - Cleaning Up
- After the app is done with the animation, it needs to clean up. That's what `dispose()` does.
- It’s like turning off a light when you leave the room—just good practice!

```dart
@override
void dispose() {
  super.dispose();
  _controller.dispose();
}
```

### 4. Tapping the Bookmark
- There’s a fun bookmark animation that starts when you tap on it. If you tap again, it goes back to the original state.
- The `GestureDetector` listens for taps, and based on whether the bookmark is marked or not, it plays the animation forward or backward.

```dart
if (bookmarked == false) {
  bookmarked = true;
  _controller.forward();
} else {
  bookmarked = false;
  _controller.reverse();
}
```

- This just means: tap to bookmark, tap again to remove the bookmark!

That's it! This app is a fun way to play with animations in Flutter. 

## Getting Started

To run this project on your local machine:

1. Clone the repository and open it in your IDE:
   ```bash
   git clone https://github.com/Bhavyansh03-tech/DopeAnimation.git
   ```
2. Run the project on an emulator or a physical device.
   ```bash
   flutter run
   ```

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any improvements or bug fixes.

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Create a new Pull Request.

## Contact

For questions or feedback, please contact [@Bhavyansh03-tech](https://github.com/Bhavyansh03-tech) on GitHub or connect with me on [LinkedIn](https://www.linkedin.com/in/bhavyansh03/).

---
