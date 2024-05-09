import 'package:flutter/material.dart';
import 'package:restaurante_bom_garfo/components/buttons/dropdown_botton.dart';

class ReservaForm extends StatefulWidget {
  const ReservaForm({Key? key}) : super(key: key);

  @override
  _ReservaFormState createState() => _ReservaFormState();
}

class _ReservaFormState extends State<ReservaForm> {
  final _formKey = GlobalKey<FormState>(); // Chave global para validar o formulário
  String _selectedTipoReserva = ''; // Variável para armazenar o tipo de reserva selecionado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Efetuar Reserva",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey, // Associando a chave global ao formulário
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nome'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o nome';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Apelido'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o apelido';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Contacto'),
                  keyboardType: TextInputType.phone, // Define o teclado para números
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o contacto';
                    } else if (!isNumeric(value)) {
                      return 'Por favor, insira apenas números';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email do Cliente'),
                  keyboardType: TextInputType.emailAddress, // Define o teclado para email
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o email';
                    } else if (!value.contains('@')) {
                      return 'Por favor, insira um email válido';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Data da Reserva'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira a data da reserva';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Hora da Reserva'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira a hora da reserva';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Número de Pessoas'),
                  keyboardType: TextInputType.number, // Define o teclado para números
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o número de pessoas';
                    } else if (!isNumeric(value)) {
                      return 'Por favor, insira apenas números';
                    }
                    return null;
                  },
                ),
                DropdownButtonComponent(
                  items: [
                    'Reserva para Almoço',
                    'Reserva para Jantar',
                    'Reserva para Brunch',
                    'Reserva para Evento Especial',
                    'Reserva para Grupo',
                    'Reserva para Degustação',
                  ],
                  initialValue: 'Reserva para Almoço', // Valor inicial selecionado (pode ser modificado conforme necessário)
                  onChanged: (value) {
                    setState(() {
                      _selectedTipoReserva = value; // Atualiza o tipo de reserva selecionado
                    });
                  },
                ),
                SizedBox(height: 16), // Adiciona uma margem superior de 16 pixels
                ElevatedButton(
                  onPressed: () {
                    // Verifica se o formulário é válido antes de submeter
                    if (_formKey.currentState!.validate()) {
                      // Lógica para submeter o formulário
                    }
                  },
                  child: Text('Efetuar Reserva'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Função para verificar se uma string contém apenas números
  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }
}
