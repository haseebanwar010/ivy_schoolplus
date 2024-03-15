<?php $__env->startSection('mainContent'); ?>
<section class="sms-breadcrumb mb-40 white-box">
    <div class="container-fluid">
        <div class="row justify-content-between">
            <h1>Examinations </h1>
            <div class="bc-pages">
                <a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                <a href="#">Examinations</a>
                <a href="<?php echo e(url('student-online-exam')); ?>">Online Exam</a>
                <a href="<?php echo e(url('take-online-exam/'.$online_exam->id)); ?>">Take Online Exam</a>
            </div>
        </div>
    </div>
</section>
<section class="admin-visitor-area">
    <div class="container-fluid p-0">
        <div class="row">

            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-4 no-gutters">
                        <div class="main-title">
                            <h3 class="mb-30">Take Online Exam</h3>
                        </div>
                    </div>
                </div>
                <?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'route' => 'student_online_exam_submit', 'method' => 'POST', 'enctype' => 'multipart/form-data', 'id' => 'online_take_exam'])); ?>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="white-box">
                            <table  class="" cellspacing="0" width="100%">
                                <tbody>
                                    <tr align="center" class="exam-bg">
                                        <td colspan="2" class="pt-4 pb-3 px-sm-5">
                                            <h1>Exam Name : <?php echo e($online_exam->title); ?></h1>
                                            <h2><b>Subject : </b><?php echo e($online_exam->subject !=""?$online_exam->subject->subject_name:""); ?></h2>
                                            <h6><b>Class(Sec.) : </b><?php echo e($online_exam->class !=""?$online_exam->class->class_name:""); ?> (<?php echo e($online_exam->section !=""?$online_exam->section->section_name:""); ?>)</h6>
                                            <h3 class="mb-20"><b>Total Marks: </b>
                                            <?php
                                            $total_marks = 0;
                                                foreach($online_exam->assignQuestions as $question){
                                                    $total_marks = $total_marks + $question->questionBank->marks;
                                                }
                                                echo $total_marks;
                                            ?></h3>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <p><b>Instruction : </b><?php echo e($online_exam->instruction); ?></p>
                                                </div>
                                                <div class="col-md-6">
                                                    <p class="mb-2"><strong>Exam Has To Be Submitted Within: </strong><?php echo e($online_exam->date); ?> <?php echo e($online_exam->end_time); ?></p>
                                                <p id="countDownTimer"></p>
                                                </div>
                                            </div>
                                            <input type="hidden" id="count_date" value="<?php echo e($online_exam->date); ?>">
                                            <input type="hidden" id="count_start_time" value="<?php echo e(date('Y-m-d H:i:s', strtotime($online_exam->start_time))); ?>">
                                            <input type="hidden" id="count_end_time" value="<?php echo e(date('Y-m-d H:i:s', strtotime($online_exam->end_time))); ?>">
                                        </td>
                                    </tr>
                                    <?php $j=0; ?>
                                    <?php $__currentLoopData = $assigned_questions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $question): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <input type="hidden" name="online_exam_id" value="<?php echo e($question->online_exam_id); ?>">
                                    <input type="hidden" name="question_ids[]" value="<?php echo e($question->question_bank_id); ?>">

                                    
                                    <tr>
                                        <td width="80%" class="pt-5">
                                            <?php echo e(++$j.'.'); ?> <?php echo e($question->questionBank->question); ?>

                                            <?php if($question->questionBank->type == "M"): ?>
                                                <?php
                                                    $multiple_options = $question->questionBank->questionMu;
                                                    $number_of_option = $question->questionBank->questionMu->count();
                                                    $i = 0;
                                                ?>
                                                <?php $__currentLoopData = $multiple_options; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $multiple_option): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <div class="mt-20">
                                                    <input type="checkbox" id="answer<?php echo e($multiple_option->id); ?>" class="common-checkbox" name="options_<?php echo e($question->question_bank_id); ?>_<?php echo e($i++); ?>" value="1">
                                                    <label for="answer<?php echo e($multiple_option->id); ?>"><?php echo e($multiple_option->title); ?></label>
                                                </div>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                            <?php elseif($question->questionBank->type == "T"): ?>
                                            <div class="d-flex radio-btn-flex mt-20">
                                                <div class="mr-30">
                                                    <input type="radio" name="trueOrFalse_<?php echo e($question->question_bank_id); ?>" id="true_<?php echo e($question->question_bank_id); ?>" value="T" class="common-radio relationButton">
                                                    <label for="true_<?php echo e($question->question_bank_id); ?>">True</label>
                                                </div>
                                                <div class="mr-30">
                                                    <input type="radio" name="trueOrFalse_<?php echo e($question->question_bank_id); ?>" id="false_<?php echo e($question->question_bank_id); ?>" value="F" class="common-radio relationButton">
                                                    <label for="false_<?php echo e($question->question_bank_id); ?>">False</label>
                                                </div>
                                            </div>
                                            <?php else: ?>

                                                <div class="input-effect mt-20">
                                                    <textarea class="primary-input form-control mt-10" cols="0" rows="3" name="suitable_words_<?php echo e($question->question_bank_id); ?>"></textarea>
                                                    <label>Suitable Words</label>
                                                    <span class="focus-border textarea"></span>
                                                </div>
                                            <?php endif; ?>
                                        </td>
                                        <td width="20%" class="text-right"><b><?php echo e($question->questionBank!=""?$question->questionBank->marks:""); ?></b></td>
                                    </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td colspan="2" class="text-center pt-4">
                                            <button class="primary-btn fix-gr-bg" id="online_take_exam_button" type="">
                                                <span class="ti-check"></span>
                                                Submit Exam
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                 <?php echo e(Form::close()); ?>

            </div>
        </div>
    </div>
</section>



<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>