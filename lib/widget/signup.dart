import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  String password = '';
  bool isPasswordVisible = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController.addListener(() => setState(() {}));
    emailController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Name",
                hintText: 'Enter your name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                suffixIcon: nameController.text.isEmpty
                    ? Container(
                        width: 0,
                      )
                    : IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () => nameController.clear(),
                      )),
            controller: nameController,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.done,
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Email",
                hintText: 'Enter your email address',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
                suffixIcon: emailController.text.isEmpty
                    ? Container(
                        width: 0,
                      )
                    : IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () => nameController.clear(),
                      )),
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            onChanged: (value) => setState(() {
              this.password = value;
            }),
            onSubmitted: (value) => setState(() {
              this.password = value;
            }),
            decoration: InputDecoration(
                labelText: "password",
                hintText: 'Enter the password',
                border: OutlineInputBorder(),
                errorText: "password is wrong",
                //prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(
                  icon: isPasswordVisible
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                )),
            obscureText: isPasswordVisible,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
