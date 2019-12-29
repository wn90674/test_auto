/* animal */
var Animal = /** @class */ (function () {
    function Animal(theName, age) {
        this.name = theName;
        this._age = age;
    }
    Animal.prototype.say = function () {
        console.log('123');
    };
    return Animal;
}());
var dog = new Animal('gg', 4);
console.log(dog);
