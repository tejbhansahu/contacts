import 'dart:io';
import 'package:contacts/core/models/alert_request/confirm_alert_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<dynamic> showConfirmAlert(
    {required BuildContext context,
    required ConfirmAlertRequest request,
    required VoidCallback onConfirmed}) {
  if (!Platform.isIOS) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actionsPadding: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        title: Text(request.title, style: const TextStyle(fontSize: 17)),
        content:
            request.description != null ? Text(request.description!) : null,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, right: 10.0),
            child: TextButton(
              child: const Text(
                'Cancel',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, right: 10.0),
            child: TextButton(
              child: Text(
                request.buttonTitle,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              onPressed: () => onConfirmed(),
            ),
          ),
        ],
      ),
    );
  } else {
    return showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(request.title, style: const TextStyle(fontSize: 17)),
        content:
            request.description != null ? Text(request.description!) : null,
        actions: <Widget>[
          CupertinoDialogAction(
            child: const Text('Cancel'),
            onPressed: () => Navigator.pop(context),
          ),
          CupertinoDialogAction(
            child: Text(request.buttonTitle),
            onPressed: () => onConfirmed(),
          ),
        ],
      ),
    );
  }
}
