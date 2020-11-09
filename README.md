# popular_alert

A simple and versatile alert widget wrapped in
 flutter.The way to use it is very similar to
  what flutter comes with, not the way Material
   looks  and not the serious frame dropping in cupertino!

## Getting Started

```dart in html
showDialog(
  context: context,
  builder: (BuildContext context) {
    return PopularAlert(
      title: 'title',
      content: 'content',
      actions: [
        FlatButton(
            onPressed: () {},
            child: Text(
              'Cancel',
              style: TextStyle(color: Colors.blue),
            )),
        FlatButton(
            onPressed: () {},
            child: Text(
              'Ok',
              style: TextStyle(color: Colors.red),
            )),
      ],
    );
  });
```