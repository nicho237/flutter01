import 'package:flutter/material.dart';
export '';

class TextInputWidget extends StatefulWidget {
  const TextInputWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final TextEditingController _controller = TextEditingController();

  String result = '';
  String clear = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF6931B),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.only(bottom: 10),
              width: 320,
              height: 80,
              child: Center(
                child: Text(
                  result,
                  style: const TextStyle(
                      fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.only(bottom: 20),
          margin: const EdgeInsets.all(10),
          child: TextField(
            controller: _controller,
            onSubmitted: (value) => setState(
              () {
                result = value;
                _controller.clear();
              },
            ),
            obscureText: false,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "CODE",
              labelText: "Input Your Code",
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.greenAccent;
                    }
                    return const Color(0xFF4873AC);
                  },
                ),
              ),
              onPressed: () => setState(
                () {
                  result = _controller.text;
                  _controller.clear();
                },
              ),
              child: const Icon(
                Icons.check_box_outlined,
                size: 60,
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.redAccent;
                    }
                    return const Color(0xFFF6931B);
                  },
                ),
              ),
              onPressed: () => setState(
                () {
                  _controller.clear();
                  result = '';
                },
              ),
              child: const Icon(
                Icons.restart_alt,
                size: 60,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
