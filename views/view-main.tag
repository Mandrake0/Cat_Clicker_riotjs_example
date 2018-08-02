<view-main>
    <h3>View Main</h3>
    <a>Name: { currentcat.name }</a><br>
    <a>Count: { currentcat.count }</a><br>
    <img onclick={ this.count } width="400px" src={ currentcat.image }></img>

    <script>
        // mixin setup
        var self = this
        this.mixin(SharedMixin)
        
        this.currentcat = this.cats[0] 
        
        // local function
        count(){
            this.currentcat.count += 1
            this.observable.trigger('refresh')
        }
        
        // observable update cat and refresh view
        this.observable.on('refresh', function(pos){
            if(typeof pos !== "undefined"){
                self.currentcat = self.cats[pos]
            }
            self.update()
        })
    </script>
</view-main>