<?php $__env->startSection('mainContent'); ?>
<style type="text/css">

  td{
        text-align: center !important;
        border-right: 1px solid #a2a7c5;
    border-left: 1px solid #a2a7c5;
    }
    tr,th,tr{
        border: 1px solid #a2a6c5;
        text-align: center;
    }
</style>
<section class="sms-breadcrumb mb-40 white-box">
    <div class="container-fluid">
        <div class="row justify-content-between">
            <h1><?php echo app('translator')->getFromJson('lang.tabulation_sheet_report'); ?> </h1>
            <div class="bc-pages">
                <a href="<?php echo e(url('dashboard')); ?>"><?php echo app('translator')->getFromJson('lang.dashboard'); ?></a>
                <a href="#"><?php echo app('translator')->getFromJson('lang.reports'); ?></a>
                <a href="<?php echo e(route('tabulation_sheet_report')); ?>"><?php echo app('translator')->getFromJson('lang.tabulation_sheet_report'); ?></a>
            </div>
        </div>
    </div>
</section>
<section class="admin-visitor-area">
    <div class="container-fluid p-0">
            <div class="row">
                <div class="col-lg-8 col-md-6">
                    <div class="main-title">
                        <h3 class="mb-30"><?php echo app('translator')->getFromJson('lang.select_criteria'); ?> </h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <?php if(session()->has('message-success') != ""): ?>
                    <?php if(session()->has('message-success')): ?>
                    <div class="alert alert-success">
                        <?php echo e(session()->get('message-success')); ?>

                    </div>
                    <?php endif; ?>
                <?php endif; ?>
                 <?php if(session()->has('message-danger') != ""): ?>
                    <?php if(session()->has('message-danger')): ?>
                    <div class="alert alert-danger">
                        <?php echo e(session()->get('message-danger')); ?>

                    </div>
                    <?php endif; ?>
                <?php endif; ?>
                <div class="white-box">
                    <?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'route' => 'tabulation_sheet_report', 'method' => 'POST', 'enctype' => 'multipart/form-data', 'id' => 'search_student'])); ?>

                        <div class="row">
                            <input type="hidden" name="url" id="url" value="<?php echo e(URL::to('/')); ?>">
                            <div class="col-lg-3 mt-30-md">
                                <select class="w-100 bb niceSelect form-control<?php echo e($errors->has('exam') ? ' is-invalid' : ''); ?>" name="exam">
                                    <option data-display="<?php echo app('translator')->getFromJson('lang.select_exam'); ?>*" value=""><?php echo app('translator')->getFromJson('lang.select_exam'); ?> *</option>
                                    <?php $__currentLoopData = $exam_types; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $exam): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($exam->id); ?>" <?php echo e(isset($exam_id)? ($exam_id == $exam->id? 'selected':''):''); ?>><?php echo e($exam->title); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                                <?php if($errors->has('exam')): ?>
                                <span class="invalid-feedback invalid-select" role="alert">
                                    <strong><?php echo e($errors->first('exam')); ?></strong>
                                </span>
                                <?php endif; ?>
                            </div>
                            <div class="col-lg-3 mt-30-md">
                                <select class="w-100 bb niceSelect form-control <?php echo e($errors->has('class') ? ' is-invalid' : ''); ?>" id="select_class" name="class">
                                    <option data-display="<?php echo app('translator')->getFromJson('lang.select_class'); ?> *" value=""><?php echo app('translator')->getFromJson('lang.select_class'); ?> *</option>
                                    <?php $__currentLoopData = $classes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $class): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($class->id); ?>" <?php echo e(isset($class_id)? ($class_id == $class->id? 'selected':''):''); ?>><?php echo e($class->class_name); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                                <?php if($errors->has('class')): ?>
                                <span class="invalid-feedback invalid-select" role="alert">
                                    <strong><?php echo e($errors->first('class')); ?></strong>
                                </span>
                                <?php endif; ?>
                            </div>
                            <div class="col-lg-3 mt-30-md" id="select_section_div">
                                <select class="w-100 bb niceSelect form-control<?php echo e($errors->has('section') ? ' is-invalid' : ''); ?> select_section" id="select_section" name="section">
                                    <option data-display="Select section *" value="">Select section *</option>
                                </select>
                                <?php if($errors->has('section')): ?>
                                <span class="invalid-feedback invalid-select" role="alert">
                                    <strong><?php echo e($errors->first('section')); ?></strong>
                                </span>
                                <?php endif; ?>
                            </div>
                            <div class="col-lg-3 mt-30-md" id="select_student_div">
                                <select class="w-100 bb niceSelect form-control<?php echo e($errors->has('student') ? ' is-invalid' : ''); ?>" id="select_student" name="student">
                                    <option data-display="<?php echo app('translator')->getFromJson('lang.select_student'); ?>" value=""><?php echo app('translator')->getFromJson('lang.select_student'); ?></option>
                                </select>
                                <?php if($errors->has('student')): ?>
                                <span class="invalid-feedback invalid-select" role="alert">
                                    <strong><?php echo e($errors->first('student')); ?></strong>
                                </span>
                                <?php endif; ?>
                            </div>

                            
                            <div class="col-lg-12 mt-20 text-right">
                                <button type="submit" class="primary-btn small fix-gr-bg">
                                    <span class="ti-search"></span>
                                    <?php echo app('translator')->getFromJson('lang.search'); ?>
                                </button>
                            </div>
                        </div>
                    <?php echo e(Form::close()); ?>

                </div>
            </div>
        </div>
</section>

<?php if(isset($marks)): ?>

<?php 
    $generalSetting= App\SmGeneralSettings::find(1);
    if(!empty($generalSetting)){
        $school_name =$generalSetting->school_name;
        $site_title =$generalSetting->site_title;
        $school_code =$generalSetting->school_code;
        $address =$generalSetting->address;
        $phone =$generalSetting->phone; 
    }

?>

<section class="student-details">
    <div class="container-fluid p-0">
        <div class="row">
            <div class="col-lg-4 no-gutters">
                <div class="main-title">
                    <h3 class="mb-30 mt-30"> <?php echo app('translator')->getFromJson('lang.student_terminal_report'); ?></h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="single-report-admit">
                    <div class="card-header">
                        <div class="row align-items-center">
                            <div class="col-lg-4">
                                <img class="logo-img" src="<?php echo e($generalSetting->logo); ?>" alt="">
                            </div>
                            <div class="col-lg-4 text-left text-lg-center mt-30-md">
                                <h4 class="text-white"><?php echo app('translator')->getFromJson('lang.class'); ?>: <?php echo e($class_name); ?></h4>
                                <h4 class="text-white mb-0"><?php echo app('translator')->getFromJson('lang.section'); ?>: <?php echo e($section_name); ?></h4>
                            </div>
                            <div class="offset-lg-1 col-lg-3 text-left text-lg-right mt-30-md">
                                <h3 class="text-white"> <?php echo e(isset($school_name)?$school_name:'Infix School Management ERP'); ?> </h3>
                                                
                                <p class="text-white mb-0"> <?php echo e(isset($address)?$address:'Infix School Adress'); ?> </p>
                            </div>
                        </div>
                    </div>

                    <div class="white-box">
                        <table class="w-100 mt-30 mb-20">
                            <thead>
                                <tr>
                                    <th rowspan="2"><?php echo app('translator')->getFromJson('lang.student'); ?> <?php echo app('translator')->getFromJson('lang.name'); ?></th>
                                    <th rowspan="2"><?php echo app('translator')->getFromJson('lang.admission'); ?> <?php echo app('translator')->getFromJson('lang.no'); ?></th>
                                    <?php $__currentLoopData = $subjects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php 
                                            $subject_ID     = $subject->subject_id; 
                                            $subject_Name   = $subject->subject->subject_name;
                                            $mark_parts      = App\SmAssignSubject::getNumberOfPart($subject_ID, $class_id, $section_id, $exam_term_id);  
                                        ?>
                                        <th colspan="<?php echo e(count($mark_parts)+1); ?>" class="text-center" style="border-right: 1px solid #ddd; border-left: 1px solid #rrf"> <?php echo e($subject_Name); ?></th>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <th rowspan="2"><?php echo app('translator')->getFromJson('lang.total_mark'); ?></th>
                                    <th rowspan="2"><?php echo app('translator')->getFromJson('lang.gpa'); ?></th>
                                    <th rowspan="2"><?php echo app('translator')->getFromJson('lang.gpa'); ?> <?php echo app('translator')->getFromJson('lang.grade'); ?></th>
                                </tr>
                                <tr>

                                    <?php $__currentLoopData = $subjects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php 
                                            $subject_ID     = $subject->subject_id; 
                                            $subject_Name   = $subject->subject->subject_name;
                                            $mark_parts     = App\SmAssignSubject::getNumberOfPart($subject_ID, $class_id, $section_id, $exam_term_id);  
                                        ?>

                                        <?php $__currentLoopData = $mark_parts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sigle_part): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <th style="text-align: center;" class="total"><?php echo e($sigle_part->exam_title); ?></th>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <th class="total"><?php echo app('translator')->getFromJson('lang.total'); ?></th>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $__currentLoopData = $students; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $student): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td> <?php echo e($student->full_name); ?></td>
                                    <td> <?php echo e($student->admission_no); ?></td>

                                    <?php $__currentLoopData = $subjects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php 
                                            $subject_ID     = $subject->subject_id; 
                                            $subject_Name   = $subject->subject->subject_name;
                                            $mark_parts     = App\SmAssignSubject::getMarksOfPart($student->id, $subject_ID, $class_id, $section_id, $exam_term_id);  
                                        ?>
                                        <?php $__currentLoopData = $mark_parts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sigle_part): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <td class="total"><?php echo e($sigle_part->total_marks); ?></td>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <td class="total">
                                            <?php echo e(App\SmAssignSubject::getSumMark($student->id, $subject_ID, $class_id, $section_id, $exam_term_id)); ?>

                                        </td>

                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <td>89</td>
                                    <td>5.00</td>
                                    <td>A+</td>
                                </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php endif; ?>
            

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>