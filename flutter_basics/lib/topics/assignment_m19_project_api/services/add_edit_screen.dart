import 'package:flutter/material.dart';
import '../models/post_model.dart';
import '../screens/api_service.dart';

class AddEditScreen extends StatefulWidget {
  final PostModel? post;

  const AddEditScreen({super.key, this.post});

  @override
  State<AddEditScreen> createState() => _AddEditScreenState();
}

class _AddEditScreenState extends State<AddEditScreen> {
  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.post != null) {
      titleController.text = widget.post!.title;
      bodyController.text = widget.post!.body;
    }
  }

  void submit() async {
    if (widget.post == null) {
      await ApiService.createPost(
        PostModel(
          title: titleController.text,
          body: bodyController.text,
          userId: 1,
        ),
      );
    } else {
      await ApiService.updatePost(
        PostModel(
          id: widget.post!.id,
          title: titleController.text,
          body: bodyController.text,
          userId: 1,
        ),
      );
    }

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.post == null ? "Add TODO" : "Edit TODO"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: "Title"),
            ),
            TextField(
              controller: bodyController,
              decoration: const InputDecoration(labelText: "Body"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: submit,
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}