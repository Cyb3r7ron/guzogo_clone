import 'package:flutter/material.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/logo.png', width: 50, height: 50),
            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                'OTP',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                'Insert OTP sent to your number',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            // OTP field with 6 digits
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildDigitBox(),
                  _buildDigitBox(),
                  _buildDigitBox(),
                  _buildDigitBox(),
                  _buildDigitBox(),
                  _buildDigitBox(),
                ],
              ),
            ),
            // Resend OTP text without underline and bold
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextButton(
                onPressed: () {
                  // Handle OTP resend logic here

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('OTP Resent'),
                    ),
                  );
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold, // Make text bold
                      decoration: TextDecoration.none, // Remove underline
                    ),
                  ),
                ),
                child: const Text('Resend'),
              ),
            ),
            // Continue button
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50, // Adjust the height as needed
              child: ElevatedButton(
                onPressed: () {
                  // Handle OTP validation and continue logic here
                  // For now, let's navigate to the homepage
                  Navigator.pushNamed(context, '/home');
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDigitBox() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: const InputDecoration(
          counterText: '',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
