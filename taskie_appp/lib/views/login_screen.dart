import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar com botão de retorno e fundo transparente
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true, // Estende o conteúdo para trás do AppBar
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'lib/asserts/images/gradient.png'), // Corrija o caminho do seu asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Shapes and Rectangle Images (posicione corretamente conforme seu design)
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset('lib/asserts/images/login/Frontshapes.png'),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset('lib/asserts/images/login/Rectangle1.png'),
          ),
          // Corpo da tela de login
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                  16.0, kToolbarHeight + 40, 16.0, 16.0),
              child: Column(
                children: [
                  // Espaço para compensar a altura do AppBar
                  const SizedBox(height: kToolbarHeight),
                  // Textos
                  Text(
                    'Bem vindo novamente',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'nós sentimos sua falta!',
                    style: GoogleFonts.poppins(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 48),
                  // Campos de texto e botão de login
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      prefixIcon: const Icon(Icons.person_outline),
                      fillColor: Colors.white.withOpacity(0.1),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Senha',
                      prefixIcon: const Icon(Icons.lock_outline),
                      fillColor: Colors.white.withOpacity(0.1),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Implemente a lógica de login
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepPurple, // Cor do texto
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 20),
                      ),
                      child: const Text('Login'),
                    ),
                  ),
                  // Adicione outros widgets para botões de login social, se necessário
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
