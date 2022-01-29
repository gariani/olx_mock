import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:olx_mock/stores/signup_store.dart';

import 'components/field_title.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  SignupStore signupStore = SignupStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Entrar'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 16,
            ),
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FieldTitle(
                      title: 'apelido',
                      subTitle: 'como aparecerá em seus anúncios',
                    ),
                    Observer(
                      builder: (_) {
                        return TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'exemplo: João S.',
                            isDense: true,
                            errorText: signupStore.nameError,
                          ),
                          onChanged: signupStore.setName,
                        );
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    FieldTitle(
                      title: 'e-mail',
                      subTitle: 'enviaremos um email de confirmação',
                    ),
                    Observer(
                      builder: (_) {
                        return TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'exemplo: joao@joao.com',
                              isDense: true,
                              errorText: signupStore.emailError),
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          onChanged: signupStore.setEmail,
                        );
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    FieldTitle(
                      title: 'celular',
                      subTitle: 'proteja sua conta',
                    ),
                    Observer(
                      builder: (_) {
                        return TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '(99) 9 9999-9999',
                            isDense: true,
                            errorText: signupStore.phoneError,
                          ),
                          keyboardType: TextInputType.phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            TelefoneInputFormatter(),
                          ],
                          onChanged: signupStore.setPhone,
                        );
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    FieldTitle(
                      title: 'senha',
                      subTitle:
                          'use caractéres numéricos e caractéres especiais',
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    FieldTitle(
                      title: 'confirmar senha',
                      subTitle: 'repita a senha',
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                      obscureText: true,
                    ),
                    Container(
                      height: 40,
                      margin: const EdgeInsets.only(top: 20, bottom: 12),
                      child: RaisedButton(
                        color: Colors.orange,
                        child: const Text('cadastrar'),
                        textColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          const Text(
                            'Já tem uma conta?',
                            style: TextStyle(fontSize: 16),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'entrar',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.purple,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
