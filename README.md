
A Flutter package that allow to have a bold and normal font weight in a same line, like a title-description format.

## Usage

```dart
FormatLabel(
    mainText: 'Animals:',
    description: 'Dog, cat, duck, hippo, bird, tiger',
    mainTextStyle: TextStyle(fontSize: 14, color: Colors.red),
    descriptionTextStyle: TextStyle(fontSize: 14, color: Colors.teal),

    // Optional values. Default values are bold and normal respectively.
    mainTextWeight: FontWeight.w700,
    descriptionTextWeight: FontWeight.w300,
)
```

## Show image example
![Alt text](image.png)