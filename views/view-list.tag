<view-list>
<h3>View Tag</h3>
<div each={ cat, index in cats }>
    <a>{ cat.name } # {cat.count}</a><br>
    <img onclick={ this.setcat } refs="s" width="200px" src={cat.image}></img>
</div>

<script>
    // mixin setup
    var self = this
    this.mixin(SharedMixin)

    // local function
    setcat(e){
        var i = e.item.index  // selected Cat
        this.observable.trigger('refresh', i)   // update and set cat index
    }

    // observable update
    this.observable.on('refresh', function(e){
    self.update()
    })
</script>
</view-list>