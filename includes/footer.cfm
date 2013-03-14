<cfoutput>
<footer id="footer">
		<div class="wrapper clearfix">
			<div class="col grid4 alpha">
				<h4>Testimonials</h4>
				<div class="rotator">
					<div class="rotator-item first-child">
						<blockquote>
							<cite>Tim is the best realtor! He helped my wife and I find a great house, in an area we really wanted to live but somehow thought we couldn't.</cite>
							<br />
							&##8212; <a href=""><strong>John and Kerry Jackson</strong>, New Lido Key Homeowners</a>
						</blockquote>
					</div>
					<div class="rotator-item">
						<blockquote>
							<cite>The reason we went with Tim was he was so laid back and knowledgeable about the Sarasota area. We made the right choice! He made the process seemless and smooth. I'd recommend him to anyone.</cite>
							<br />
							&##8212; <a href=""><strong>Matt Johnson</strong>, New Downtown Sarasota Resident</a>
						</blockquote>
					</div>
					<a href="" class="prev tooltip" title="Previous">Prev</a><a href="" class="next tooltip" title="Next">Next</a>
				</div>
			</div>
			<div class="col grid4">
				<h4>Latest Blog Items</h4>
				<!---<div class="post-item clearfix">
					<a href="" class="left-image"><img src="#request.basecaller#images/home-slider/house-1.jpg" alt="" width="60" height="60" /></a>
					<h5 class="title"><a href="">Sarasota Market Report</a></h5>
					<em class="date">January 4, 2013</em>
				</div>
				<div class="post-item clearfix">
					<a href="" class="left-image"><img src="#request.basecaller#images/home-slider/house-2.jpg" alt="" width="60" height="60" /></a>
					<h5 class="title"><a href="" class="title">Why Lakewood Ranch?</a></h5>
					<em class="date">January 12, 2013</em>
				</div>
				<div class="post-item clearfix">
					<a href="" class="left-image"><img src="#request.basecaller#images/home-slider/house-3.jpg" alt="" width="60" height="60" /></a>
					<h5 class="title"><a href="" class="title">Getting Mortgage Financing in 2013</a></h5>
					<em class="date">January 21, 2013</em>
				</div>--->
				<br />
			</div>
			<div class="col grid4">
				<h4>Contact Information</h4>
				<p>
					Timothy A. Blomquist<br />
					Prudential Elite Realty<br />
					8319 Market Street<br />
					Lakewood Ranch, FL 34202<br />
					941.544.4044 Direct<br />
					941-907.2000 Office
				</p>
				<a href="#request.basecaller#contact/" class="button animated bounce">Email Me</a>
				<br />
			</div>
			<div class="sep sep-margin-top"><span></span></div>
			<p class="copyright">Copyright &copy; 2013 Timothy A. Blomquist. Created by <a href="http://www.limitlessmind.com" target="_blank">Limitless Mind</a>. All Rights Reserved. 
			<a href="##logo" id="top-link"><span>&uarr;</span> Scroll To Top</a></p>
		</div>
	</footer>

	<script type='text/javascript' src='#request.basecaller#js/jquery.min.js'></script>
	<script type='text/javascript' src='#request.basecaller#js/jquery.common.min.js'></script>
	<script type='text/javascript' src='#request.basecaller#js/site.js'></script>
	<script type='text/javascript' src='#request.basecaller#js/plugins/jquery.flexslider.min.js'></script>
	<script type='text/javascript' src='#request.basecaller#js/plugins/jquery.fancybox.min.js'></script>
	<script type="text/javascript">
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation      : "slide",
				animationSpeed : 500,
				easing         : "easeInOutCirc",
				useCSS         : false,
				controlNav     : false,
				prevText       : '<span>Prev</span>',
				nextText       : '<span>Next</span>',
				start          : function() {
					$('.flexslider').removeClass('loading');
					if (!iOS) htmlScrollbar.resize();
				}
			});
			$(window).smartresize();
		});
		$(function(){
			$(".lightbox").fancybox({
				padding    : 8,
				loop       : true,
				fitToView  : true,
				mouseWheel : false,
				closeClick : false,
				overlay    : { showEarly  : true },
				helpers    : { media : { } }
			});
		});
	</script>
</body>
</html>
</cfoutput>