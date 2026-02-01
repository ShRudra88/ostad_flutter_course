import 'package:flutter/material.dart';

class LiveTestOne extends StatelessWidget {
  const LiveTestOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List',style: TextStyle(color: Colors.white),),
        backgroundColor: const Color(0xFF607D8B),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Hasan',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
            const SizedBox(height: 10),



            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: '01745-777777',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF607D8B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 16),

            Expanded(
              child: ListView(
                children: const [
                  ContactCard(name: 'Jawad', phone: '01877-777777'),
                  ContactCard(name: 'Ferdous', phone: '01673-777777'),
                  ContactCard(name: 'Hasan', phone: '01745-777777'),
                  ContactCard(name: 'Hasan', phone: '01745-777777'),
                  ContactCard(name: 'Hasan', phone: '01745-777777'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String name;
  final String phone;

  const ContactCard({
    super.key,
    required this.name,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      elevation: 1,
      child: ListTile(
        leading: const Icon(Icons.person, color: Colors.brown),
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(phone),
        trailing: const Icon(
          Icons.call,
          color: Colors.blue,
        ),
      ),
    );
  }
}
