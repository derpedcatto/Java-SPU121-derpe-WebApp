document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.slider');
    var options = {
        duration: 400,
        dist: -100,
        shift: 0,
        height: 700,
        padding: 0,
        numVisible: 5,
        fullWidth: false,
        indicators: true,
        noWrap: false,
        onCycleTo: null
    };
    var instances = M.Slider.init(elems, options);
});