import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class TestPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(body: QuillEditor(controller: QuillController.basic(), focusNode: FocusNode(), scrollController: ScrollController(), scrollable: true, padding: EdgeInsets.all(10), autoFocus: true, readOnly: false, expands: true));
  }

}
