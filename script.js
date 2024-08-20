window.onload = function() {
    document.querySelector("h1").innerText = "Latihan JavaScript Selesai";

    let name = "John";
    const age = 30;

    let output = document.getElementById("output");
    output.innerHTML = `<p>Nama: ${name}</p>`;
    output.innerHTML += `<p>Umur: ${age}</p>`;

    let fruits = ["Apple", "Banana", "Mango"];
    output.innerHTML += "<p>Buah-buahan:</p><ul>";
    for (let i = 0; i < fruits.length; i++) {
        output.innerHTML += `<li>${fruits[i]}</li>`;
    }
    output.innerHTML += "</ul>";

    let person = {
        firstName: "John",
        lastName: "Doe",
        age: 30
    };
    output.innerHTML += `<p>Nama Lengkap: ${person.firstName} ${person.lastName}</p>`;
};

function checkValue() {
    let userInput = document.getElementById("userInput").value;
    let output = document.getElementById("output");

    if (userInput > 10) {
        output.innerHTML = "<p>Nilai lebih besar dari 10</p>";
    } else if (userInput == 10) {
        output.innerHTML = "<p>Nilai sama dengan 10</p>";
    } else {
        output.innerHTML = "<p>Nilai kurang dari 10</p>";
    }

    output.innerHTML += "<p>Angka dari 1 hingga " + userInput + ":</p><ul>";
    for (let i = 1; i <= userInput; i++) {
        output.innerHTML += `<li>${i}</li>`;
    }
    output.innerHTML += "</ul>";
}

function greet(name) {
    return "Hello, " + name;
}

function calculateSquare(number) {
    return number * number;
}

let sum = (a, b) => a + b;

let output = document.getElementById("output");
output.innerHTML += `<p>${greet("Alice")}</p>`;
output.innerHTML += `<p>Kuadrat dari 4 adalah: ${calculateSquare(4)}</p>`;
output.innerHTML += `<p>Penjumlahan 5 dan 3 adalah: ${sum(5, 3)}</p>`;

let students = ["Alice", "Bob", "Charlie"];
students.push("David");

output.innerHTML += "<p>Nama siswa:</p><ul>";
students.forEach(student => {
    output.innerHTML += `<li>${student}</li>`;
});
output.innerHTML += "</ul>";

let car = {brand: "Toyota", model: "Corolla", year: 2020};

output.innerHTML += "<p>Mobil:</p><ul>";
for (let key in car) {
    output.innerHTML += `<li>${key}: ${car[key]}</li>`;
}
output.innerHTML += "</ul>";

let cars = [
    {brand: "Honda", model: "Civic", year: 2018},
    {brand: "Ford", model: "Mustang", year: 2022},
    {brand: "Chevrolet", model: "Impala", year: 2016}
];

output.innerHTML += "<p>Daftar mobil:</p><ul>";
cars.forEach(car => {
    output.innerHTML += `<li>${car.brand} ${car.model} (${car.year})</li>`;
});
output.innerHTML += "</ul>";
