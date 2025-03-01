"""import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF139F57),
              Color(0xFF139F57),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 100),
                  const CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(
                          'lib/images/kisan_dwaar_logo-removebg.png')),
                  const SizedBox(height: 20),
                  const Text(
                    'KISAN द्वार',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'ईमेल',
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'कृपया ईमेल दर्ज करें';
                      }
                      if (!value.contains('@')) {
                        return 'कृपया एक मान्य ईमेल दर्ज करें';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'पासवर्ड',
                      prefixIcon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'कृपया पासवर्ड दर्ज करें';
                      }
                      return null;
                    },
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                      const Text('याद रखें'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('प्रवेश सफल!')),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 250, 210, 34),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 80,
                        vertical: 15,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text('लॉग इन करें'),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 250, 25, 25),
                      ),
                    ),
                    child: const Text('कोई खाता नहीं है? खाता बनाएं'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}"""
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  bool _rememberMe = false;
  bool _isLoading = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadPreferences();
  }

  // Load saved email and remember me state
  void _loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _rememberMe = prefs.getBool('rememberMe') ?? false;
      if (_rememberMe) {
        _emailController.text = prefs.getString('savedEmail') ?? "";
      }
    });
  }

  // Save email and remember me state
  void _savePreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (_rememberMe) {
      await prefs.setBool('rememberMe', true);
      await prefs.setString('savedEmail', _emailController.text);
    } else {
      await prefs.setBool('rememberMe', false);
      await prefs.remove('savedEmail');
    }
  }

  // Email validation function
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'कृपया ईमेल दर्ज करें';
    }
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegex.hasMatch(value)) {
      return 'कृपया एक मान्य ईमेल दर्ज करें';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF139F57),
              Color(0xFF139F57),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 100),
                  const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('lib/images/kisan_dwaar_logo-removebg.png'),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'KISAN द्वार',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Email Input Field
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'ईमेल',
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: _validateEmail,
                  ),
                  const SizedBox(height: 20),

                  // Password Input Field with Visibility Toggle
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'पासवर्ड',
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'कृपया पासवर्ड दर्ज करें';
                      }
                      if (value.length < 6) {
                        return 'पासवर्ड कम से कम 6 अक्षरों का होना चाहिए';
                      }
                      return null;
                    },
                    obscureText: !_isPasswordVisible,
                  ),
                  const SizedBox(height: 20),

                  // Remember Me Checkbox
                  Row(
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (value) {
                          setState(() {
                            _rememberMe = value!;
                          });
                        },
                      ),
                      const Text(
                        'याद रखें',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Login Button with Loading Indicator
                  ElevatedButton(
                    onPressed: _isLoading
                        ? null
                        : () {
                            if (_formKey.currentState!.validate()) {
                              setState(() => _isLoading = true);
                              Future.delayed(const Duration(seconds: 2), () {
                                setState(() => _isLoading = false);
                                _savePreferences();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('प्रवेश सफल!')),
                                );
                              });
                            }
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFAD222),
                      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    ),
                    child: _isLoading
                        ? const CircularProgressIndicator(color: Colors.black)
                        : const Text('लॉग इन करें'),
                  ),
                  const SizedBox(height: 20),

                  // Signup Link
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 250, 25, 25),
                      ),
                    ),
                    child: const Text('कोई खाता नहीं है? खाता बनाएं'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

