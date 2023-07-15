import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:roadside_assistance/common/widgets/navigation.dart';

class VerificationForm extends StatelessWidget {
  const VerificationForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 211, 211),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Verification", style: TextStyle(),),
        backgroundColor: const Color.fromARGB(255, 53, 52, 52),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 19),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Icon(
                Icons.mail,
                size: 140,
                color: const Color.fromARGB(255, 170, 69, 61),
              ),
              const SizedBox(
                height: 80,
              ),
              const Text(
                "Verification code",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const Text(
                "We have sent the verification code to +23767*****46",
                style: TextStyle(color: Color.fromARGB(255, 126, 123, 123)),
              ),
              const SizedBox(height: 40,),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 500,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Text("Resend", style: TextStyle(color: Colors.black),),
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.all(15),
                            side: BorderSide(color: Colors.black),
                          ),
                          ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                NavBar()));
                        },
                        child: Text("Confirm"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 170, 69, 61),
                          padding: EdgeInsets.all(15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
