import 'package:flutter/material.dart';
import 'package:taskie_appp/utils/constants.dart';
import 'package:taskie_appp/views/login_screen.dart';
import 'package:taskie_appp/views/signup_screen.dart';
import 'package:taskie_appp/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.lightPurple,
              AppColors.darkPurple,
            ],
          ),
        ),
        child: SingleChildScrollView(
          // Permite a rolagem da tela
          child: Column(
            children: <Widget>[
              SizedBox(height: screenHeight * 0.2), // Espaço superior
              Text('taskie',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 6.72, // Ajuste de espaçamento das letras
                  )),
              SizedBox(
                  height:
                      screenHeight * 0.05), // Espaço entre 'taskie' e as frases
              Text('Organize. Simplifique. Conquiste.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.normal,
                  )),
              SizedBox(
                  height: screenHeight *
                      0.05), // Espaço entre as frases e o texto explicativo
              const Text(
                  'Não deixe para fazer amanhã o que você pode fazer hoje com Taskie.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  )),
              SizedBox(height: screenHeight * 0.1), // Espaço antes dos botões
              CustomButton(
                text: AppStrings.loginButtonText,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                color:
                    const Color.fromRGBO(219, 158, 253, 1), // Pode ser ajustado
                textColor: Colors.white,
              ),
              const SizedBox(height: 16), // Espaço entre os botões
              CustomButton(
                text: AppStrings.registerButtonText,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupScreen()));
                },
                color:
                    const Color.fromRGBO(219, 158, 253, 1), // Pode ser ajustado
                textColor: Colors.white,
              ),
              SizedBox(height: screenHeight * 0.1), // Espaço no fundo
            ],
          ),
        ),
      ),
    );
  }
}
