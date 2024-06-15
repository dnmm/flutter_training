import 'package:flutter/material.dart';

class AddCardPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Student Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Student Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the student name';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Student ID'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the student ID';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Class'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the class';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Process the student information
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Student Information Added')),
                    );
                  }
                },
                child: Text('Add Student'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
