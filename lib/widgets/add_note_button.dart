import 'package:flutter/material.dart';
import 'package:note_app/views/add_note_view.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  void _openAddNoteSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => const _AddNoteBottomSheet(),
    );
    
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _openAddNoteSheet(context),
      child: const Icon(Icons.add),
    );
  }
}

/// Separate widget for the draggable, scrollable bottom sheet
class _AddNoteBottomSheet extends StatelessWidget {
  const _AddNoteBottomSheet();

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      builder: (context, scrollController) => SingleChildScrollView(
        controller: scrollController,
        child: AddNoteView(),
      ),
    );
  }
}
