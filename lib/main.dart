import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Register Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget verticalSpacer =
        const Padding(padding: EdgeInsets.symmetric(vertical: 7.5));
    Widget horizontalSpacer =
        const Padding(padding: EdgeInsets.symmetric(horizontal: 10));
    EdgeInsets contentPadding = const EdgeInsets.all(15);

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Center(
              child: Form(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/flutter-logo.png',
                      width: 90,
                    ),
                    verticalSpacer,
                    const Text(
                      'Bienvenu a nouveau sur votre application',
                      textScaler: TextScaler.linear(1.2),
                    ),
                    verticalSpacer,
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.account_circle),
                          contentPadding: contentPadding,
                          label: const Text('Nom'),
                          hintText: 'votre nom',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)))),
                    ),
                    verticalSpacer,
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.account_circle),
                          contentPadding: contentPadding,
                          label: const Text('Prenom'),
                          hintText: 'votre prenom',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)))),
                    ),
                    verticalSpacer,
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          contentPadding: contentPadding,
                          prefixIcon: const Icon(Icons.email),
                          label: const Text('Email'),
                          hintText: 'votre email',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)))),
                    ),
                    verticalSpacer,
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          contentPadding: contentPadding,
                          prefixIcon: const Icon(Icons.lock),
                          label: const Text('Password'),
                          hintText: 'votre Password',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)))),
                    ),
                    verticalSpacer,
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          contentPadding: contentPadding,
                          prefixIcon: const Icon(Icons.lock),
                          label: const Text('Confirm password'),
                          hintText: 'confirmez mot de passe',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)))),
                    ),
                    verticalSpacer,
                    verticalSpacer,
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue, elevation: 5),
                        child: const Text("S'incrire",
                            textScaler: TextScaler.linear(1.3),
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    verticalSpacer,
                    verticalSpacer,
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'ou continuez avec',
                                textScaler: TextScaler.linear(1.1),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ]),
                    verticalSpacer,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(
                                  color: Colors.grey, style: BorderStyle.solid),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: SizedBox(
                            height: 40,
                            child: Image.asset('assets/images/google.png'),
                          ),
                        ),
                        horizontalSpacer,
                        Container(
                          alignment: FractionalOffset.bottomCenter,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(
                                  color: Colors.grey, style: BorderStyle.solid),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: SizedBox(
                            height: 40,
                            child: Image.asset('assets/images/apple.png'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
