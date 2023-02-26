import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/text_input.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({super.key});

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  final TextEditingController _textController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(children: [
                Row(children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back))
                ]),
                // ignore: prefer_const_constructors
                CircleAvatar(
                  radius: 64,
                  backgroundImage: AssetImage('assetName'),
                ),

                //Username Input
                const Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: Text(
                    "Username",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextFieldInput(
                    hintText: 'Your Username',
                    isPass: false,
                    textInputType: TextInputType.name,
                    textEditingController: _textController),

                //First Name Input
                const Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: Text(
                    "First Name",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextFieldInput(
                    hintText: 'Your First Name',
                    isPass: false,
                    textInputType: TextInputType.name,
                    textEditingController: _textController),

                //First Last Name
                const Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: Text(
                    "Last Name",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextFieldInput(
                    hintText: 'Your Last Name',
                    isPass: false,
                    textInputType: TextInputType.name,
                    textEditingController: _textController),
              ]),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 315,
                      height: 75,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color.fromARGB(255, 95, 115, 243), mainBlue],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.01, 1],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 1),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.only(left: 24.0, top: 24, right: 24),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Verify',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Icon(Icons.arrow_forward, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
