<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<!-- <link rel="stylesheet" type="text/css" href="myStyle.css"> -->
<title>HCI Website</title>

<!-- References: https://github.com/fancyapps/fancyBox -->

<!-- Add jQuery library -->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

<!-- Add fancyBox -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/fancybox/source/jquery.fancybox.css" type="text/css" media="screen" />
<script type="text/javascript" src="<%=request.getContextPath()%>/fancybox/source/jquery.fancybox.js"></script>

<script>
	$(document).ready(function() {
		//FANCYBOX
		//https://github.com/fancyapps/fancyBox
		$(".fancybox").fancybox({
			openEffect : "elastic",
			closeEffect : "elastic"
		});
	});
</script>

<style type="text/css">
.gallery {
	display: inline-block;
	margin-top: 20px;
}
</style>

</head>
<body>
	<jsp:include page="PageHeader.jsp" />
	
<div class="container">
	<div class="row">
		<div class='list-group gallery'>
            <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                <a class="thumbnail fancybox" rel="ligthbox" href="http://www.edinphoto.org.uk/0_P/0_photographers_w_r_and_s_-_castle_in_snow.jpg">
                    <img class="img-responsive" alt="" src="http://www.edinphoto.org.uk/0_P/0_photographers_w_r_and_s_-_castle_in_snow.jpg" />
                    <div class='text-right'>
                        <small class='text-muted'>Edinburgh in Winter</small>
                    </div> <!-- text-right / end -->
                </a>
            </div> <!-- col-6 / end -->
            <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                <a class="thumbnail fancybox" rel="ligthbox" href="http://hdw9.com/wp-content/uploads/2013/08/Beautiful-Horse-horses-22410583-1280-800.jpg">
                    <img class="img-responsive" alt="" src="http://hdw9.com/wp-content/uploads/2013/08/Beautiful-Horse-horses-22410583-1280-800.jpg" />
                    <div class='text-right'>
                        <small class='text-muted'>Beautiful Horse</small>
                    </div> <!-- text-right / end -->
                </a>
            </div> <!-- col-6 / end -->
            <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                <a class="thumbnail fancybox" rel="ligthbox" href="http://www.asianews.it/files/img/SRI_LANKA_(F)_1016_-_Elephant.jpg">
                    <img class="img-responsive" alt="" src="http://www.asianews.it/files/img/SRI_LANKA_(F)_1016_-_Elephant.jpg" />
                    <div class='text-right'>
                        <small class='text-muted'>Sri Lankan Elephant</small>
                    </div> <!-- text-right / end -->
                </a>
            </div> <!-- col-6 / end -->
            <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                <a class="thumbnail fancybox" rel="ligthbox" href="http://news.bbc.co.uk/media/images/47438000/jpg/_47438966_londoneye2pa.jpg">
                    <img class="img-responsive" alt="" src="http://news.bbc.co.uk/media/images/47438000/jpg/_47438966_londoneye2pa.jpg" />
                    <div class='text-right'>
                        <small class='text-muted'>London Eye Fireworks</small>
                    </div> <!-- text-right / end -->
                </a>
            </div> <!-- col-6 / end -->
            <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                <a class="thumbnail fancybox" rel="ligthbox" href="http://www.classicscarinsurance.co.uk/blog/wp-content/uploads/2011/04/612.jpg">
                    <img class="img-responsive" alt="" src="http://www.classicscarinsurance.co.uk/blog/wp-content/uploads/2011/04/612.jpg" />
                    <div class='text-right'>
                        <small class='text-muted'>Classic Car</small>
                    </div> <!-- text-right / end -->
                </a>
            </div> <!-- col-6 / end -->
            <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                <a class="thumbnail fancybox" rel="ligthbox" href="http://iandone.files.wordpress.com/2011/09/dundee-university_5.jpg">
                    <img class="img-responsive" alt="" src="http://iandone.files.wordpress.com/2011/09/dundee-university_5.jpg" />
                    <div class='text-right'>
                        <small class='text-muted'>Queen Mother Building</small>
                    </div> <!-- text-right / end -->
                </a>
            </div> <!-- col-6 / end -->
        </div> <!-- list-group / end -->
	</div> <!-- row / end -->
</div> <!-- container / end -->
</body>
</html>