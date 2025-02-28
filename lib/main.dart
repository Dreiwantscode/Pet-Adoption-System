import 'package:flutter/material.dart';

void main() {
  runApp(const PetAdoptionApp());
}

class PetAdoptionApp extends StatelessWidget {
  const PetAdoptionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Adoption',
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedFilter = 'All';

  final List<Pet> pets = [
    Pet(name: 'ALICE', imageUrl: '', type: 'Cat'),
    Pet(name: 'MATEO', imageUrl: '', type: 'Dog'),
    Pet(name: 'MITA', imageUrl: '', type: 'Dog'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Adoption System'),
        actions: [
          TextButton(onPressed: () {}, child: const Text('ADOPT')),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: const Text('DONATE', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Adopt a shelter cat or dog',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              _buildAdoptionSteps(),
              const SizedBox(height: 30),
              _buildFilterButtons(),
              const SizedBox(height: 20),
              _buildPetGrid(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAdoptionSteps() {
    return Container(
      width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildStep('Submit the adoption application form'),
          _buildStep('Meet our shelter animals in person'),
          _buildStep('Visit your chosen pet to confirm your choice'),
          _buildStep('Take your pet home!'),
          const SizedBox(height: 20),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: const Text(
                  'Apply Now',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 20),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Adoption FAQ'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStep(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          const Icon(Icons.pets, color: Colors.amber, size: 16),
          const SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }

  Widget _buildFilterButtons() {
    return Row(
      children: [
        FilterChip(
          selected: _selectedFilter == 'All',
          label: const Text('All'),
          onSelected: (bool selected) {
            setState(() => _selectedFilter = 'All');
          },
        ),
        const SizedBox(width: 8),
        FilterChip(
          selected: _selectedFilter == 'Cats',
          label: const Text('Cats'),
          onSelected: (bool selected) {
            setState(() => _selectedFilter = 'Cats');
          },
        ),
        const SizedBox(width: 8),
        FilterChip(
          selected: _selectedFilter == 'Dogs',
          label: const Text('Dogs'),
          onSelected: (bool selected) {
            setState(() => _selectedFilter = 'Dogs');
          },
        ),
      ],
    );
  }

  Widget _buildPetGrid() {
    final filteredPets =
        _selectedFilter == 'All'
            ? pets
            : pets
                .where(
                  (pet) =>
                      pet.type ==
                      _selectedFilter.substring(0, _selectedFilter.length - 1),
                )
                .toList();

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.8,
      ),
      itemCount: filteredPets.length,
      itemBuilder: (context, index) {
        return PetCard(pet: filteredPets[index]);
      },
    );
  }
}

class Pet {
  final String name;
  final String imageUrl;
  final String type;

  Pet({required this.name, required this.imageUrl, required this.type});
}

class PetCard extends StatelessWidget {
  final Pet pet;

  const PetCard({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Image.asset(pet.imageUrl, fit: BoxFit.cover)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              pet.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
