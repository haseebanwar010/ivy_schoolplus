<?php $__env->startSection('mainContent'); ?>
<section class="sms-breadcrumb mb-40 white-box">
    <div class="container-fluid">
        <div class="row justify-content-between">
            <h1>Examinations </h1>
            <div class="bc-pages">
                <a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                <a href="#">Examinations</a>
                <a href="<?php echo e(url('online-exam')); ?>">Online Exam</a>
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
                            <h3 class="mb-30">Marking Online Exam</h3>
                        </div>
                    </div>
                </div>
                <?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'route' => 'online_exam_marks_store', 'method' => 'POST', 'enctype' => 'multipart/form-data'])); ?>

                <input type="hidden" name="online_exam_id" value="<?php echo e($take_online_exam->online_exam_id); ?>">
                <input type="hidden" name="student_id" value="<?php echo e($take_online_exam->student_id); ?>">
                <div class="row">
                    <div class="col-lg-12">
                        <table id="table_id" class="display school-table" cellspacing="0" width="100%">
                            <tbody>
                                <tr align="center">
                                    <td colspan="3">
                                        <h4><?php echo e($take_online_exam->onlineExam !=""?$take_online_exam->onlineExam->question:""); ?></h4>
                                        <h3><b>Subject: </b><?php echo e($take_online_exam->onlineExam!=""?$take_online_exam->onlineExam->subject->subject_name:""); ?></h3>
                                        <h3><b>Total Marks: </b></h3>
                                        <h3><b>Exam Has To Be Submitted Within: </b><?php echo e($take_online_exam->onlineExam !=""?$take_online_exam->onlineExam->date:""); ?> <?php echo e($take_online_exam->onlineExam!=""?$take_online_exam->onlineExam->end_time:""); ?></h3>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Question</th>
                                    <th class="text-right">Marks</th>
                                    <th class="text-right">Currect</th>
                                </tr>
                                <?php 
                                    $j=0;
                                    $answered_questions = $take_online_exam->answeredQuestions;
                                ?>
                                <?php $__currentLoopData = $answered_questions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $question): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td width="60%">
                                        <?php echo e(++$j.'.'); ?> <?php echo e($question->questionBank->question); ?>

                                        <?php if($question->questionBank->type == "M"): ?>
                                            <?php

                                                $multiple_options = $question->takeQuestionMu;
                                                $number_of_option = $question->takeQuestionMu->count();
                                                $i = 0;
                                            ?>
                                            <?php $__currentLoopData = $multiple_options; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $multiple_option): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <div class="mt-20">
                                                <input type="checkbox" id="answer<?php echo e($multiple_option->id); ?>" class="common-checkbox" name="options_<?php echo e($question->question_bank_id); ?>_<?php echo e($i++); ?>" value="1" <?php echo e($multiple_option->status == 1? 'checked': ''); ?>>
                                                <label for="answer<?php echo e($multiple_option->id); ?>"><?php echo e($multiple_option->title); ?></label>
                                            </div>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                        <?php elseif($question->questionBank->type == "T"): ?>
                                        <div class="d-flex radio-btn-flex mt-20">
                                            <div class="mr-30">
                                                <input type="radio" name="trueOrFalse_<?php echo e($question->question_bank_id); ?>" id="true_<?php echo e($question->question_bank_id); ?>" value="T" class="common-radio relationButton" <?php echo e($question->trueFalse == "T"? 'checked': ''); ?>>
                                                <label for="true_<?php echo e($question->question_bank_id); ?>">True</label>
                                            </div>
                                            <div class="mr-30">
                                                <input type="radio" name="trueOrFalse_<?php echo e($question->question_bank_id); ?>" id="false_<?php echo e($question->question_bank_id); ?>" value="F" class="common-radio relationButton" <?php echo e($question->trueFalse == "F"? 'checked': ''); ?>>
                                                <label for="false_<?php echo e($question->question_bank_id); ?>">False</label>
                                            </div>
                                        </div>

                                        
                                        <?php else: ?>

                                            <div class="input-effect mt-20">
                                                <textarea class="primary-input form-control mt-10" cols="0" rows="5" name="suitable_words_<?php echo e($question->question_bank_id); ?>"><?php echo e($question->suitable_words); ?></textarea>
                                                <label>Suitable Words</label>
                                                <span class="focus-border textarea"></span>
                                            </div>
                                        <?php endif; ?>

                                        <div class="mt-20">
                                            <?php if($question->questionBank->type == "M"): ?>
                                            <?php
                                                $ques_bank_multiples = $question->questionBank->questionMu;
                                                $currect_multiple = '';
                                                $k = 0;
                                                foreach($ques_bank_multiples as $ques_bank_multiple){
                                                
                                                    if($ques_bank_multiple->status == 1){
                                                    $k++;
                                                        if($k == 1){
                                                            $currect_multiple .= $ques_bank_multiple->title;
                                                        }else{
                                                            $currect_multiple .= ','.$ques_bank_multiple->title;
                                                        }
                                                    }
                                                }

                                            ?>
                                            <h4>[Currect Answer: <?php echo e($currect_multiple); ?>]</h4>
                                            <?php elseif($question->questionBank->type == "T"): ?>
                                                <h4>[Currect Answer: <?php echo e($question->questionBank->trueFalse == "T"? 'True': 'False'); ?>]</h4>
                                            <?php else: ?> 
                                                <h4>[Currect Answer: <?php echo e($question->questionBank->suitable_words); ?>]</h4>
                                            <?php endif; ?>
                                        </div>
                                    </td>
                                    <td width="20%" class="text-right"><b><?php echo e($question->questionBank !=""?$question->questionBank->marks:""); ?></b></td>
                                    <td width="20%" class="text-right">
                                        <div class="mt-20">
                                            <input type="checkbox" id="marks_<?php echo e($question->questionBank !=""?$question->questionBank->id:""); ?>" class="common-checkbox" name="marks[]" value="<?php echo e($question->questionBank!=""?$question->questionBank->id:""); ?>">
                                            <label for="marks_<?php echo e($question->questionBank!=""?$question->questionBank->id:""); ?>"></label>
                                        </div>
                                    </td>
                                </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td colspan="3" class="text-center">
                                        <button class="primary-btn fix-gr-bg">
                                            <span class="ti-check"></span>
                                            Submit Marks
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                 <?php echo e(Form::close()); ?>

            </div>
        </div>
    </div>
</section>



<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>