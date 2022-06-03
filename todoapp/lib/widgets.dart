import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String desc;

  TaskCardWidget({this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 24.0,
      ),
      margin: EdgeInsets.only(
        top: 15.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xFF212121),
        borderRadius: BorderRadius.circular(21.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "İsimsiz",
            style: TextStyle(
              color: Color(0xFFFCFCFC),
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(
              desc ?? "...",
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xFF8C8881),
                height: 1.5,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TodoWidget extends StatelessWidget {
  final String text;
  final bool isDone;

  TodoWidget({this.text, @required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Container(
            width: 20.0,
            height: 20.0,
            margin: EdgeInsets.only(
              right: 12.0,
            ),
            decoration: BoxDecoration(
              color: isDone ? Color(0xFF141414) : Colors.transparent,
              border: isDone
                  ? null
                  : Border.all(
                      color: Color(0xFF333333),
                      width: 1.5,
                    ),
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Image(
              image: AssetImage(
                "assets/images/check_icon.png",
              ),
            ),
          ),
          Flexible(
            child: Text(
              text ?? "(isimsiz to-do)",
              style: TextStyle(
                color: isDone ? Color(0xFF141414) : Color(0xFF383838),
                decoration:
                    isDone ? TextDecoration.lineThrough : TextDecoration.none,
                fontSize: 16.0,
                fontWeight: isDone ? FontWeight.bold : FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
