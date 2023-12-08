import 'package:flutter/material.dart';

Widget? myCard(
        {required String title,
        required Function()? downloadMethod,
        required Function()? playVid,
        required context}) =>
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Row(
            children: [
              Text(title,
                  style: Theme.of(context!)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Theme.of(context).colorScheme.primary)),
              const Spacer(),
              IconButton(
                  onPressed: playVid,
                  icon: Icon(Icons.play_circle_outlined,
                      size: 35, color: Theme.of(context).colorScheme.primary))
            ],
          ),
        ),
      ),
    );

void navigateTo(
  context,
  Widget screen,
) =>
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => screen,
        ));
