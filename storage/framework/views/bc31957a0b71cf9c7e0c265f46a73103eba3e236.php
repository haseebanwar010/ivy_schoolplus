<?php
function showPicName($data){
$name = explode('/', $data);
return $name[3];
}
?>
<div class="container-fluid mt-30">
    <div class="student-details">
        <div class="student-meta-box">
            <div class="single-meta">
            <?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'route' => 'save-homework-evaluation-data', 'method' => 'POST', 'enctype' => 'multipart/form-data'])); ?>

                <div class="row">
                    <div class="col-lg-9 col-md-9">
                        <table id="" class="table table-condensed table-hover" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Admission No</th>
                                    <th>Student Name</th>
                                    <th>Marks</th>
                                    <th>Commnents</th>
                                    <th>Homework Status</th>
                                </tr>
                            </thead>

                            <tbody>

                                <?php $__currentLoopData = $students; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php
                                    $submitted_student =  App\SmHomework::evaluationHomework($value->id, $homeworkDetails->id);
                                ?>

                                <?php if($submitted_student != ""): ?>
                                <tr>
                                    <td width="8%"><?php echo e($submitted_student->studentInfo->admission_no); ?></td>
                                    <td width="10%"><?php echo e($submitted_student->studentInfo->full_name); ?></td>
                                    <td width="10%">
                                        <div class="input-effect">
                                            <input class="primary-input form-control" type="text" name="marks[]" value="<?php echo e($submitted_student->marks); ?>">
                                            <span class="focus-border"></span>
                                            <label>marks</label>
                                            <?php if($errors->has('marks')): ?>
                                            <span class="invalid-feedback" role="alert">
                                                <strong><?php echo e($errors->first('marks')); ?></strong>
                                            </span>
                                            <?php endif; ?>
                                        </div>
                                        <input type="hidden" name="student_id[]" value="<?php echo e($submitted_student->studentInfo->id); ?>">
                                        <input type="hidden" name="homework_id" value="<?php echo e($homework_id); ?>">
                                        
                                    </td>

                                    <td>
                                        <div class="d-flex">
                                            <div class="mr-30">
                                                <input type="radio" id="buttonG<?php echo e($submitted_student->studentInfo->id); ?>" class="common-radio" name="teacher_comments[<?php echo e($submitted_student->studentInfo->id); ?>]" value="G" <?php echo e($submitted_student->teacher_comments == "G"? 'checked':''); ?>> &nbsp; &nbsp;<label for="buttonG<?php echo e($submitted_student->studentInfo->id); ?>">Good</label> &nbsp; &nbsp;
                                            </div>
                                            <div class="mr-30">
                                                <input type="radio" id="buttonNG<?php echo e($submitted_student->studentInfo->id); ?>" class="common-radio" name="teacher_comments[<?php echo e($submitted_student->studentInfo->id); ?>]" value="NG" <?php echo e($submitted_student->teacher_comments == "NG"? 'checked':''); ?>> &nbsp; &nbsp;<label for="buttonNG<?php echo e($submitted_student->studentInfo->id); ?>">Not Good</label>
                                            </div>
                                        </div>

                                    </td>

                                    <td>
                                        <div class="d-flex">
                                            <div class="mr-30">
                                                <input type="radio" id="buttonC<?php echo e($submitted_student->studentInfo->id); ?>" class="common-radio" name="homework_status[<?php echo e($submitted_student->studentInfo->id); ?>]" value="C" <?php echo e($submitted_student->complete_status == "C"? 'checked':''); ?>> &nbsp; &nbsp;<label for="buttonC<?php echo e($submitted_student->studentInfo->id); ?>">Completed</label> &nbsp; &nbsp;
                                            </div>
                                            <div class="mr-30">
                                                <input type="radio" id="buttonNC<?php echo e($submitted_student->studentInfo->id); ?>" class="common-radio" name="homework_status[<?php echo e($submitted_student->studentInfo->id); ?>]" value="NC" <?php echo e($submitted_student->complete_status == "NC"? 'checked':''); ?>>&nbsp; &nbsp; <label for="buttonNC<?php echo e($submitted_student->studentInfo->id); ?>">Not Completed</label>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <?php else: ?>
                                <tr>
                                    <td width="8%"><?php echo e($value->admission_no); ?></td>
                                    <td width="10%"><?php echo e($value->full_name); ?></td>
                                    <td width="10%">
                                        <div class="input-effect">
                                            <input class="primary-input form-control" type="text" name="marks[]">
                                            <span class="focus-border"></span>
                                            <label>marks</label>
                                            <?php if($errors->has('marks')): ?>
                                            <span class="invalid-feedback" role="alert">
                                                <strong><?php echo e($errors->first('marks')); ?></strong>
                                            </span>
                                            <?php endif; ?>
                                        </div>
                                        <input type="hidden" name="student_id[]" value="<?php echo e($value->id); ?>">
                                        <input type="hidden" name="homework_id" value="<?php echo e($homework_id); ?>">
                                        
                                    </td>

                                    <td>

                                        <div class="d-flex">
                                            <div class="mr-30">
                                                <input type="radio" id="buttonG<?php echo e($value->id); ?>" class="common-radio" name="teacher_comments[<?php echo e($value->id); ?>]" value="G" checked> &nbsp; &nbsp;<label for="buttonG<?php echo e($value->id); ?>">Good</label> &nbsp; &nbsp;
                                            </div>
                                            <div class="mr-30">
                                                <input type="radio" id="buttonNG<?php echo e($value->id); ?>" class="common-radio" class="common-radio" name="teacher_comments[<?php echo e($value->id); ?>]" value="NG"> &nbsp; &nbsp;<label for="buttonNG<?php echo e($value->id); ?>">Not Good</label>
                                            </div>
                                        </div>
                                    </td>


                                    <td>
                                        <div class="d-flex">
                                        <div class="mr-30">

                                            <input type="radio" id="buttonC<?php echo e($value->id); ?>" class="common-radio" name="homework_status[<?php echo e($value->id); ?>]" value="C" checked> &nbsp; &nbsp;<label for="buttonC<?php echo e($value->id); ?>">Completed</label> &nbsp; &nbsp;
                                        </div>
                                        <div class="mr-30">
                                            <input type="radio" id="buttonNC<?php echo e($value->id); ?>" class="common-radio" name="homework_status[<?php echo e($value->id); ?>]" value="NC">&nbsp; &nbsp; <label for="buttonNC<?php echo e($value->id); ?>">Not Completed</label>
                                        </div>
                                    </div>

                                    </td>
                                </tr>

                                <?php endif; ?>

                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tbody>
                        </table>

                        <div class="col-lg-12 mt-30">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="no-gutters input-right-icon">
                                        <div class="col">
                                            <div class="input-effect">
                                                <input class="primary-input date form-control<?php echo e($errors->has('evaluation_date') ? ' is-invalid' : ''); ?>" id="evaluation_date" type="text"
                                                placeholder="Evaluation Date" name="evaluation_date" value="<?php echo e(date('m/d/Y')); ?>" autocomplete="off" readonly="true">
                                                <span class="focus-border"></span>
                                                <?php if($errors->has('evaluation_date')): ?>
                                                <span class="invalid-feedback" role="alert">
                                                    <strong><?php echo e($errors->first('evaluation_date')); ?></strong>
                                                </span>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <button class="" type="button">
                                                <i class="ti-calendar" id="evaluation_date_icon"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <button class="primary-btn fix-gr-bg pull-right">
                                        <span class="ti-check"></span>
                                        save Homework
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3">
                       <div class="col-lg-12">
                           <div class="row">

                            <h4 class="stu-sub-head">Homework Summary</h4>

                        </div>
                    </div> 

                    <div class="single-meta">
                        <div class="row">
                            <div class="col-lg-7">
                                <div class="value text-left">
                                    Homework Date
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="name">
                                    <?php if(isset($homeworkDetails)): ?>
                                    
      <?php echo e($homeworkDetails->homework_date != ""? App\SmGeneralSettings::DateConvater($homeworkDetails->homework_date):''); ?>


                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="single-meta">
                        <div class="row">
                            <div class="col-lg-7">
                                <div class="value text-left">
                                    Submission Date
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="name">
                                    <?php if(isset($homeworkDetails)): ?>
                                   
         <?php echo e($homeworkDetails->submission_date != ""? App\SmGeneralSettings::DateConvater($homeworkDetails->submission_date):''); ?>


                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="single-meta">
                        <div class="row">
                            <div class="col-lg-7">
                                <div class="value text-left">
                                    Evaluation Date 
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="name">
                                    <?php if($homeworkDetails->evaluation_date != ""): ?>
                                  
 <?php echo e($homeworkDetails->evaluation_date != ""? App\SmGeneralSettings::DateConvater($homeworkDetails->evaluation_date):''); ?>

              
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="single-meta">
                        <div class="row">
                            <div class="col-lg-7">
                                <div class="value text-left">
                                    Created By
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="name">
                                   <?php if(isset($homeworkDetails)): ?>
                                   <?php echo e($homeworkDetails->users->full_name); ?>

                                   <?php endif; ?>
                               </div>
                           </div>
                       </div>
                   </div>

                   <div class="single-meta">
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="value text-left">
                                Evaluated By
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="name">
                                <?php if(isset($homeworkDetails)): ?>
                                <?php echo e($homeworkDetails->users->full_name); ?>

                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="single-meta">
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="value text-left">
                                Class
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="name">
                               <?php if(isset($homeworkDetails)): ?>
                               <?php echo e($homeworkDetails->classes->class_name); ?>

                               <?php endif; ?>
                           </div>
                       </div>
                   </div>
               </div>

               <div class="single-meta">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="value text-left">
                            Section
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="name">
                            <?php if(isset($homeworkDetails)): ?>
                            <?php echo e($homeworkDetails->sections->section_name); ?>

                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>

            <div class="single-meta">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="value text-left">
                            Subject
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="name">
                            <?php if(isset($homeworkDetails)): ?>
                            <?php echo e($homeworkDetails->subjects->subject_name); ?>

                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>

            <div class="single-meta">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="value text-left">
                            Marks
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="name">
                            
                            <?php echo e($homeworkDetails->marks); ?>

                           
                        </div>
                    </div>
                </div>
            </div>

            <div class="single-meta">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="value text-left">
                            Attach File
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="name">
                            <?php if($homeworkDetails->file != ""): ?>
                             <a href="<?php echo e(url('evaluation-document/'.showPicName($homeworkDetails->file))); ?>">
                                    Download <span class="pl ti-download"></span>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>

            <div class="single-meta">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="value text-left">
                            Description
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="name">
                            <?php if(isset($homeworkDetails)): ?>
                            <?php echo e($homeworkDetails->description); ?>

                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php echo e(Form::close()); ?>

</div>

</div>
</div>
</div>
<script type="text/javascript">
    $('.school-table-data').DataTable({
        bLengthChange: false,
        language: {
            search: "<i class='ti-search'></i>",
            searchPlaceholder: 'Quick Search',
            paginate: {
                next: "<i class='ti-arrow-right'></i>",
                previous: "<i class='ti-arrow-left'></i>"
            }
        },
        buttons: [ ],
        columnDefs: [
        {
            visible: false
        }
        ],
        responsive: true
    });

    // for evaluation date

    $('#evaluation_date_icon').on('click', function() {
        $('#evaluation_date').focus();
    });

    $('.primary-input.date').datepicker({
        autoclose: true
    });

    $('.primary-input.date').on('changeDate', function(ev) {
        $(this).focus();
    });

</script>
