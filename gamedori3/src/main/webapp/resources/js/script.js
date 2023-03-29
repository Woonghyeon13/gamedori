window.onload = function () {

       $(document).ready(function () {
              $('.jjim').mouseover(function () {
              //hover엔 마우스 오버와 아웃이 공존함
                            $(this).removeClass('xi-heart-o');
                            $(this).addClass('xi-heart');
                     });
              $('.jjim').mouseout(function () {
              //hover엔 마우스 오버와 아웃이 공존함
                     $(this).removeClass('xi-heart');		
                     $(this).addClass('xi-heart-o');
                     });
       });

       $(window).on('scroll', function() {
		$('.fade-in').each(function() {
			const scrollPos = $(this).offset().top;
			const windowHeight = $(window).height();
			const scrollTop = $(window).scrollTop();

			if (scrollPos < scrollTop + windowHeight * 0.8) {
			$(this).css('opacity', 1);
			}
		});
		});

		$(window).on('scroll', function() {
		$('.fade-in1').each(function() {
			const scrollPos = $(this).offset().top;
			const windowHeight = $(window).height();
			const scrollTop = $(window).scrollTop();

			if (scrollPos < scrollTop + windowHeight * 0.8) {
			$(this).css('opacity', 1);
			}
		});
		});

		$(window).on('scroll', function() {
		$('.fade-in2').each(function() {
			const scrollPos = $(this).offset().top;
			const windowHeight = $(window).height();
			const scrollTop = $(window).scrollTop();

			if (scrollPos < scrollTop + windowHeight * 3.2) {
			$(this).css('opacity', 1);
			}
		});
		});

		$(window).on('scroll', function() {
		$('.fade-in3').each(function() {
			const scrollPos = $(this).offset().top;
			const windowHeight = $(window).height();
			const scrollTop = $(window).scrollTop();

			if (scrollPos < scrollTop + windowHeight * 4.4) {
			$(this).css('opacity', 1);
			}
		});
		});

		$(window).on('scroll', function() {
		$('.fade-in4').each(function() {
			const scrollPos = $(this).offset().top;
			const windowHeight = $(window).height();
			const scrollTop = $(window).scrollTop();

			if (scrollPos < scrollTop + windowHeight * 8.6) {
			$(this).css('opacity', 1);
			}
		});
		});


      
}
