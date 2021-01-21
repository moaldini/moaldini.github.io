// (function(){
//     "use strict";
//     var createBicyclePrototye = function(){
//         return {
//             speed: 0,
//             applyBrake: function(val){
//                 this.speed -= val
//             },
//             speedUp: function(val){
//                 this.speed += val
//             }
//         }
//     };

//     var createMountainBikePrototype = function(prototype){
//         var obj = Object.create(prototype);
//         obj.gear = 1;
//         obj.setGear = function(val){
//             this.gear = val;
//         };
//         return obj;
//     };

//     var start = function(){
//         var createBicyclePrototyeObj = new createBicyclePrototye();
//         var createMountainBikePrototypeObj = new createMountainBikePrototype(createBicyclePrototyeObj);

//         return createMountainBikePrototypeObj;
//     };
//     var obj1 = createBicyclePrototye();
//     obj1.speed = 100;
//     obj1.speedUp(20);
//     console.log(obj1.speed);

//     var obj2 = createMountainBikePrototype(obj1);
//     obj2.setGear(5);
//     console.log(obj2.gear);
//     console.log(obj2.speed);

//     var obj3 = start();
//     obj3.setGear(4);
//     obj3.speedUp(100)
//     console.log(obj3.gear);
//     console.log(obj3.speed);
// })();
class Bicycle{
    constructor(){
        this.speed=0;
    }
    speedup(val){
        this.speed += val;
    }
    applyBrake(val){
        this.speed -= val;
    }
}

class MoutainBike{
    constructor(prototype){
        this.obj = prototype;
        this.gear=1;
    }
    setGear(value){
        this.gear = value;
    }
}

(function () { 
    function start() {
        let prototype =  new Bicycle();
        let bicycle =  new Bicycle();
        let mountainBike =  new MoutainBike(prototype);

        console.log('Bicycle: ', bicycle);
        console.log('After SpeedUp');
        bicycle.speedup(20);
        console.log('Bicycle: ', bicycle);
        console.log('Speed Down');
        bicycle.applyBrake(10);
        console.log('Bicycle: ', bicycle);

        console.log('-------------- Next');
        console.log('MountainBike: ', mountainBike);
        console.log('SpeedUp By Prototype');
        mountainBike.obj.speedup(20);
        console.log('MountainBike: ', mountainBike);
        mountainBike.setGear(2);
        console.log('change gear to 2: ');
        console.log(mountainBike);
    }

    start();
})();