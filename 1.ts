/* animal */
class Animal {
     private name: string;
     _age: number;
    constructor(theName: string,age: number) {
        this.name=theName ;
        this._age=age ;
    }
    say(){
        console.log('123')
    }
}


let dog=new Animal('gg',4)
console.log(dog);
