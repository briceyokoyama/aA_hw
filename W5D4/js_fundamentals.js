function madLib(str1, str2, str3) {
    return `We shall ${str1} the ${str2} ${str3.toUpperCase()}`;
}

function isSubstring(searchString, subString) {
    return searchString.includes(subString);
}

function fizzBuzz(array) {
    var newArr = [];
    for (let i = 0; i < array.length; i++) {
        if (array[i]%3 ==0 || array[i]%5 == 0) {
            newArr.push(array[i]);
        };
    };
    return newArr;
};

function isPrime(number) {
    if (number < 2) {
        return false;
    }
    var i = 2;
    while (i < number) {
        if (number%i==0) {
            return false;
        }
        i++;
    }
    return true;
};

function sumOfNPrimes(n) {

    function firstNPrimes() {
        array = []
        i = 2;
        while (array.length < n) {
            if (isPrime(i)) {
                array.push(i);
            }
            i++;
        }
        return array;
    }

    var sum = 0;
    // firstNPrimes().forEach(function(div) {
    //     sum += div;
    // })
    firstNPrimes().forEach((div) => sum += div)
    return sum;
};

function printCallback(array) {
    array.forEach(ele => console.log(ele))
}

function titleize(array, func) {
   let mapped = array.map((ele) => `Mx. ${ele} Jingleheimer Schmidt`)

   func(mapped)
}

function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
};

Elephant.prototype.trumpet = function() {
    console.log(`${this.name} the elephant goes phrRRRRRRRR!!!!!!`)
};

Elephant.prototype.grow = function() {
    this.height += 2;
};

Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
};

Elephant.prototype.play = function() {
    console.log(`${this.name} is ${this.tricks[Math.floor(Math.random()*this.tricks.length)]}`);
};

function paradeHelper(elephant) {
    console.log(`${elephant.name} is trotting by!`);
}
//herd.forEach(paradeHelper);  // use this to initiate the parade!

function dinerBreakfast() {
    order = ['cheesy scrambled eggs']
}