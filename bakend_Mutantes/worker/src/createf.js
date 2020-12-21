const { log } = require('console');
const fs = require('fs');
// fs.writeFile('myjsonfile.json', json, 'utf8', callback);


// obj.table.push({id: 1, square:2});

var obj = {};
var json = JSON.stringify(obj);

fs.readFile('./parameters/parameters.json', 'utf8', function readFileCallback(err, data){
    if (err){
        console.log(err);
    } else {
    obj = JSON.parse(data); //now it an object
    console.log(obj);
    console.log("obj.multithreadExec: ",  obj.multithreadExec);
    obj.multithreadExec = 'false';
    obj.selectionParameters.amountMutants = "3"
    console.log(obj);
    // obj.table.push({id: 2, square:3}); //add some data
    json = JSON.stringify(obj); //convert it back to json
    fs.writeFile('./parameters/parameters.json', json, 'utf8', callback); // write it back 
}});

function callback(err, data){
    if (err){
        console.log(err);
    }
}