<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HFP - Home for Pets</title>
    
    <!-- Scripts -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="antialiased">
    <!-- Navigation -->
    <nav class="bg-white shadow-lg">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex justify-between items-center py-4">
                <!-- Logo -->
                <div class="flex items-center">
                    <img src="{{ asset('images/pet.jpg') }}" alt="HFP Logo" class="h-16">
                </div>
                
                <!-- Navigation Links -->
                <div class="hidden md:flex space-x-8">
                    <a href="#" class="text-gray-700 hover:text-green-500">HOME</a>
                    <a href="#" class="text-gray-700 hover:text-green-500">OUR ANIMALS</a>
                    <a href="#" class="text-gray-700 hover:text-green-500">ABOUT US</a>
                    <a href="#" class="text-gray-700 hover:text-green-500">JOIN US</a>
                    <a href="#" class="text-gray-700 hover:text-green-500">FAQ</a>
                    <a href="#" class="text-gray-700 hover:text-green-500">CONTACT US</a>
                </div>

                <!-- Action Buttons -->
                <div class="flex space-x-4">
                    <a href="#" class="bg-black text-white px-4 py-2 rounded">ADOPT</a>
                    <a href="#" class="bg-green-500 text-white px-4 py-2 rounded">REGISTER</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="max-w-7xl mx-auto px-4 py-8">
        <!-- Adoption Section -->
        <section class="mb-12">
            <h1 class="text-4xl font-bold mb-6">Adopt a shelter cat or dog</h1>
            
            <div class="mb-8">
                <p class="text-lg mb-4">
                    Our adoptable cats and dogs are all rescued. Because they lived a difficult life  
                    before being rescued, we need to be sure that they get 
                    adopted by loving humans and won't be subjected to 
                    further cruelty or neglect. Here's how to apply:
                </p>

                <!-- Adoption Steps -->
                <ul class="space-y-2 mb-6">
                    <li class="flex items-center">
                        <span class="text-yellow-400 mr-2">⭐</span>
                        Submit the adoption application form
                    </li>

                    <li class="flex items-center">
                        <span class="text-yellow-400 mr-2">⭐</span>
                        Meet our shelter animals in person
                    </li>
                    <li class="flex items-center">
                        <span class="text-yellow-400 mr-2">⭐</span>
                        Visit your chosen pet to confirm your choice
                    </li>
                    <li class="flex items-center">
                        <span class="text-yellow-400 mr-2">⭐</span>
                        Wait for vet clearance and schedule pick up
                    </li>
                    <li class="flex items-center">
                        <span class="text-yellow-400 mr-2">⭐</span>
                        Take your pet home!
                    </li>
                </ul>

                <!-- Action Buttons -->
                <div class="flex space-x-4">
                    <a href="#" class="bg-black text-white px-6 py-3 rounded">Apply Now</a>
                    <a href="#" class="border border-black text-black px-6 py-3 rounded">Adoption FAQ</a>
                </div>
            </div>

            <!-- Pet Gallery -->
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                    <img src="{{ asset('images/example.jpg') }}" alt="Example" class="w-full h-64 object-cover">
                    <div class="p-4">
                        <h3 class="text-xl font-bold text-center text-green-500">EXAMPLE</h3>
                    </div>
                </div>
                <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                    <img src="{{ asset('images/example.jpg') }}" alt="Example" class="w-full h-64 object-cover">
                    <div class="p-4">
                        <h3 class="text-xl font-bold text-center text-green-500">EXAMPLE</h3>
                    </div>
                </div>
                <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                    <img src="{{ asset('images/example.jpg') }}" alt="Example" class="w-full h-64 object-cover">
                    <div class="p-4">
                        <h3 class="text-xl font-bold text-center text-green-500">EXAMPLE</h3>
                    </div>
                </div>
            </div>
        </section>
    </main>
</body>
</html>