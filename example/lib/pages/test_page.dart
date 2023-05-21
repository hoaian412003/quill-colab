import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as q;

class TestPage extends StatefulWidget {
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  var virtualCursors = [q.VirtualCursor(color: Colors.amber, offset: 2)];
  var controller = q.QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: q.QuillEditor(
            controller: controller,
            focusNode: FocusNode(),
            scrollController: ScrollController(),
            scrollable: true,
            padding: const EdgeInsets.all(10),
            autoFocus: false,
            readOnly: false,
            expands: true,
            virtualCursors: virtualCursors,
          ),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                virtualCursors[0].offset++;
              });
            },
            child: const Text('Down'))
      ],
    ));
  }
}
