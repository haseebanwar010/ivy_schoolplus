<html>

	<head>
		<title>Student Certificate</title>

		<link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/vendors/css/bootstrap.css" />
		<link rel="stylesheet" href="<?php echo e(asset('public/backEnd/')); ?>/css/style.css" />
		<style rel="stylesheet">
			.tdWidth{
				width: 33.33%;
			}
			.bgImage{
				height:auto; 
				background-repeat:no-repeat;
				background-image: url(<?php echo e(asset($certificate->file)); ?>);
				  
			}
			table{
				margin-top: 160px;
				text-align: center; 
			}
			tr{ 
			}
			td{
				padding: 25px !important;
			}
			.DivBody{    
				height: 680px !important;
				/*-ms-transform: rotate(20deg); 
				  -webkit-transform: rotate(90deg); 
				  transform: rotate(90deg);*/
				  
			}
			.tdBody{
				text-align: justify !important;				
			    height: 140px;
			    padding-top: 0px;
			    padding-bottom: 0px;
			    padding-left: 65px;
			    padding-right: 65px;

			}
			img{
				position: absolute;
			}
			table{
				position: relative;
				top:100;			
			}
		</style>
	</head>

	<body>

		<?php $__currentLoopData = $students; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $student): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
		<div class="DivBody">
			<img src="<?php echo e(asset($certificate->file)); ?>" style="height: 670px; width: 1030px">
			<table width="80%" align="center">
				<tr>
					<td style="text-align: left;" class="tdWidth"><?php echo e($certificate->header_left_text); ?>:</td>
					<td style="text-align: center;" class="tdWidth"></td>
					<td style="text-align: right;" class="tdWidth">Date: <?php echo e($certificate->date); ?></td>
				</tr>
				<tr>
					<td colspan="3" class="tdBody"><?php echo e(App\SmStudentCertificate::certificateBody($certificate->body, $student->id)); ?></td>
				</tr>
				<tr>
					<td style="text-align: left;" class="tdWidth"><?php echo e($certificate->footer_left_text); ?></td>
					<td style="text-align: center;" class="tdWidth"><?php echo e($certificate->footer_center_text); ?></td>
					<td style="text-align: right;" class="tdWidth"><?php echo e($certificate->footer_right_text); ?></td>
				</tr>
			</table>
		</div>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>	
























		
	</body>
</html>