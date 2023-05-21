import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class EditorWidget extends StatefulWidget {
  const EditorWidget(
      {required this.controller,
      required this.virtualCursor,
      required this.updateVirtualCursor,
      required this.updateContent,
      Key? key})
      : super(key: key);
  final QuillController controller;
  final VirtualCursor virtualCursor;
  final void Function(int offset) updateVirtualCursor;
  final void Function(Delta delta) updateContent;

  @override
  State<EditorWidget> createState() => _EditorWidgetState();
}

class _EditorWidgetState extends State<EditorWidget> {
  final focusNode = FocusNode();
  final _controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return QuillEditor(
      controller: _controller,
      focusNode: focusNode,
      scrollController: ScrollController(),
      scrollable: true,
      padding: const EdgeInsets.all(10),
      autoFocus: false,
      readOnly: false,
      expands: true,
      virtualCursors: [widget.virtualCursor],
    );
  }
}
