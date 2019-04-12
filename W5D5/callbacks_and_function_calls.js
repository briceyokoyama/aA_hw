// Simple Timeout
window.setTimeout(function() {alert('HAMMERTIME')}, 5000);

// Timeout plus closure
function hammerTime(time) {
    window.setTimeout(function() {alert(`${time} is hammertime!`)}, time);
}

const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function teaAndBiscuits () {
    let first, second;

    reader.question("Would you like some tea?", function (answer1) {
        reader.question("Would you like some bisctuits?", function (answer2) {
            first = answer1;
            console.log(`${answer1}`);
            second = answer2;
            console.log(`${answer2}`);


            const firstAnswer = (first === 'yes') ? 'do' : 'don\'t';
            const secondAnswer = (second === 'yes') ? 'do' : 'don\'t';
        
            console.log(`So you ${firstAnswer} want tea and you ${secondAnswer} want biscuits.`);
            reader.close();
        });   
    });
}