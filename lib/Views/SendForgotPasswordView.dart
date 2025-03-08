import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mategram/Components/ElevatedButton.dart';
import 'package:mategram/Controllers/SendForgotPasswordController.dart';

class SendForgotPasswordView extends StatefulWidget {
  const SendForgotPasswordView({super.key});

  @override
  State<SendForgotPasswordView> createState() => _SendForgotPasswordViewState();
}

final SendForgotPasswordCodeController controller =
    Get.put(SendForgotPasswordCodeController());

final List<FocusNode> focusNodes = List.generate(
  6,
  (index) => FocusNode(),
);

class _SendForgotPasswordViewState extends State<SendForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    final controllers = [
      controller.index1,
      controller.index2,
      controller.index3,
      controller.index4,
      controller.index5,
      controller.index6,
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Code Verification",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  6,
                  (index) => Container(
                    margin: const EdgeInsets.all(4),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.rectangle,
                    ),
                    child: TextField(
                      controller: controllers[index],
                      focusNode: focusNodes[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        counterText: '',
                      ),
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          if (index < 5) {
                            FocusScope.of(context)
                                .requestFocus(focusNodes[index + 1]);
                          } else {
                            focusNodes[index].unfocus();
                          }
                        } else if (value.isEmpty && index > 0) {
                          FocusScope.of(context)
                              .requestFocus(focusNodes[index - 1]);
                        }
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                      child: Elevatedbutton(
                          text: "Verify Code",
                          backColor: Colors.red,
                          foreColor: Colors.white,
                          onPressed: () {})),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
