jQuery(document).ready(function($){
  $(document).foundation(); // Initialize Foundation
});

class LogoSlider {
    slideWidth = 140; // step
    currentSlide = 0;
    numSlide = 0;
    timer = null;
    slider = null;
    wrapper = null;
    rotorWidth = 0;

    constructor(elmId) {
        this.slider = document.getElementById(elmId);
        if (this.slider) {
            this.start();
        }        
    }
    
    next() {
        if (this.currentSlide === this.numSlide + 1) {
            this.wrapper.style.transition = 'none';
            this.wrapper.style.transform = 'translateX(0)';
            this.currentSlide = 0;
        }         
        if (this.currentSlide === 1) {
            this.wrapper.style.transition = 'transform .5s ease';
        }
        if (this.currentSlide == this.numSlide) {
            this.wrapper.style.transform = 'translateX(-'+ this.rotorWidth +'px)';
        } else {
            this.wrapper.style.transform = 'translateX(-'+ this.slideWidth * this.currentSlide +'px)';        
        }
        this.currentSlide++;
    }
    
    appendLogo() {
        // append logs to end so make it infnite scroll
//        let windowWidth = this.slider.querySelector('.carousel-logos-container').offsetWidth;
//        let wrapperWidth = this.wrapper.offsetWidth;
        
//        if (wrapperWidth <= windowWidth) {
            let slides = this.wrapper.children;
            for (var i=0; i<this.numSlide; i++) {
                this.wrapper.append(slides[i].cloneNode(true));
            }
//        }
    }
    
    start() {
        this.wrapper = this.slider.querySelector('.wrapper'); 
        if (this.wrapper) {
            this.wrapper.style.transition = 'transform .5s ease';
            this.numSlide = this.wrapper.childElementCount;
            
            var windowWidth = this.slider.querySelector('.carousel-logos-container').offsetWidth;
            var rotorW = 0;
            var slides = this.wrapper.children;
            
            // add slides to the end
            if (this.numSlide > 0) {
                // check width of wrapper: Note: js returns incorrect flex width
                for (var i = 0; i < this.numSlide; i++) {
                    rotorW += slides[i].offsetWidth;                    
                }
                
                if (rotorW > windowWidth) {
                    this.rotorWidth = rotorW;
                    this.wrapper.style.justifyContent = 'flex-start';
                    this.appendLogo();
                    this.timer = setInterval(this.next.bind(this), 2000);
                }
            }
        }
    }
    
    stop() {
        clearTimeout(this.timer);
    }

}


var blogFilter = {
    currentFilter: null,
    width: null,
    showAll: function() {
        [].forEach.call(document.querySelectorAll('.post[class*="f-"]'), function(el) {
            el.style.opacity = 1;
            el.style.flex = 1;
        });
    },
    filter: function(cat) { 
        if ('' === cat) {
            this.showAll();
            return;
        } 
        
        [].forEach.call(document.querySelectorAll('.post'), function(el) {
            if (el.classList.contains(cat)) {
                el.style.opacity = 1;
                el.style.flex = 1;
            } else {
                
                el.style.opacity = 0;
                el.style.flex = 0;
            }
        });        
    },
    init: function(elmId) { 
        var self = this;
        this.width = document.querySelectorAll('.post').offsetWidth;
        [].forEach.call(document.getElementById(elmId).querySelectorAll('a[data-filter]'), function(el) {
            el.addEventListener('click', function(e) {
                e.preventDefault();
                self.filter(this.dataset.filter)
            });
        });
    }
};

class Popup {
    constructor(modalId, timeDelay, popupReset) {
        jQuery(document).ready(function($){
            if (window.localStorage) {
                // Get the last popup date
                var lastPopup = localStorage.getItem('a_'+modalId);                
                
                var now = (new Date()).getTime();
                
                if (lastPopup && popupReset > now - lastPopup) {
                    return;
                }                
                
                localStorage.setItem('a_'+modalId, now);                
            } 
            
            window.setTimeout(function(){ 
                $('#'+modalId).foundation('open');
            }, timeDelay);                
        }.bind(this));
    }
}