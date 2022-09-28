import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'stream_builder_model.dart';

class StreamBuilderWidget extends StatefulWidget {
  const StreamBuilderWidget({super.key});

  @override
  State<StreamBuilderWidget> createState() => _StreamBuilderWidgetState();
}

class _StreamBuilderWidgetState extends StreamBuilderModel {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: stream.map((i) => i),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('');
        } else if (snapshot.connectionState == ConnectionState.done) {
          return const Text('Done');
        } else if (snapshot.hasError) {
          return const Text('Error!');
        } else {
          return Text(
            snapshot.data ?? '',
            style: context.textTheme.headline6,
          );
        }
      },
    );
  }
}
