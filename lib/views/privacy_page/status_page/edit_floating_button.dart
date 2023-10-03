import 'package:flutter/material.dart';
import 'package:whatsapp_status_page/colors/colors_constants.dart';
import 'package:whatsapp_status_page/views/text_status/text_status.dart';

class EditFloatingButton extends StatelessWidget {
  const EditFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 560,
            right: 21,
          ),
          child: FloatingActionButton(
            backgroundColor: Colors.teal.shade100,
            mini: true,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return StatusText();
                },
              ));
            },
            child: Icon(
              Icons.edit,
              color: ColorsConstant.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
