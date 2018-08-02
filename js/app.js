
// Mixin Setup with the values
var SharedMixin = {
    observable: riot.observable(),
    cats:[
        {name:"Miau1", image:"images/image.jpg", count: 0},
        {name:"Miau2", image:"images/image2.jpg", count: 0}, 
        {name:"Miau3", image:"images/image3.jpg", count: 0}
        ]
    };

// Mounts all tags 
riot.mount('*')
