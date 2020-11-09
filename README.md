# popular_alert

A kind of alert we often use

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