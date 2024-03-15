<script src="<?php echo e(asset('public/backEnd/')); ?>/js/main.js"></script>

<div class="container-fluid">
    <?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'url' => 'add-new-class-routine-store',
                        'method' => 'POST', 'enctype' => 'multipart/form-data', 'name' => 'myForm', 'onsubmit' => "return validateAddNewroutine()"])); ?>

        <div class="row">
            <div class="col-lg-12">
                

                <input type="hidden" name="url" id="url" value="<?php echo e(URL::to('/')); ?>">
                <input type="hidden" name="day" id="day" value="<?php echo e($day); ?>">
                <input type="hidden" name="class_time_id" id="class_time_id" value="<?php echo e($class_time_id); ?>">
                <input type="hidden" name="class_id" id="class_id" value="<?php echo e($class_id); ?>">
                <input type="hidden" name="section_id" id="section_id" value="<?php echo e($section_id); ?>">


                <input type="hidden" name="update_teacher_id" id="update_teacher_id" value="<?php echo e(isset($teacher_detail)? $teacher_detail->id:''); ?>">

                <?php if(isset($assigned_id)): ?>
                    <input type="hidden" name="assigned_id" id="assigned_id" value="<?php echo e($assigned_id); ?>">
                <?php endif; ?>

                <div class="row mt-25">
                    <div class="col-lg-12 mt-30-md">
                        <select class="w-100 bb niceSelect form-control" name="subject" id="subject" onchange="changeSubject()">
                            <option data-display="<?php echo app('translator')->getFromJson('lang.select'); ?> <?php echo app('translator')->getFromJson('lang.subject'); ?> *" value=""><?php echo app('translator')->getFromJson('lang.select'); ?> <?php echo app('translator')->getFromJson('lang.subject'); ?> *</option>
                            <?php $__currentLoopData = $subjects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if(!in_array($subject->subject_id, $assinged_subject)): ?>
                                <option value="<?php echo e($subject->subject_id); ?>" <?php echo e(isset($subject_id)? ($subject_id == $subject->subject_id?'selected':''):''); ?>><?php echo e($subject->subject->subject_name); ?></option>
                                <?php endif; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                        <span class="text-danger" role="alert" id="subject_error">
                        </span>
                        
                    </div>
                </div>
                <div class="row mt-25">
                    <div class="col-lg-12 mt-30-md">
                        <div class="input-effect">

                         <input name="teacher_name" class="primary-input" type="text" readonly="true" id="teacher_name" value="<?php echo e(isset($teacher_detail)? $teacher_detail->full_name:''); ?>">

                         <input name="teacher_id" class="primary-input" type="hidden" readonly="true" id="teacher_id"  value="<?php echo e(isset($teacher_detail)? $teacher_detail->id:''); ?>">

                         <span class="focus-border"></span>
                         <label><?php echo app('translator')->getFromJson('lang.teacher'); ?> <span>*</span></label>
                        <span class="text-danger" role="alert" id="teacher_error">
                        </span>
                     </div>
                        
                    </div>
                </div>
                <div class="row mt-25">
                    <div class="col-lg-12 mt-30-md">
                        <select class="w-100 bb niceSelect form-control" name="room" id="room">
                            <option data-display="<?php echo app('translator')->getFromJson('lang.select'); ?> <?php echo app('translator')->getFromJson('lang.room'); ?> *" value=""><?php echo app('translator')->getFromJson('lang.select'); ?> <?php echo app('translator')->getFromJson('lang.room'); ?> *</option>
                            <?php $__currentLoopData = $rooms; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $room): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if(!in_array($room->id, $assinged_room)): ?>
                                <option value="<?php echo e($room->id); ?>" <?php echo e(isset($room_id)? ($room_id == $room->id?'selected':''):''); ?>><?php echo e($room->room_no); ?></option>
                                <?php endif; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                        <span class="text-danger" role="alert" id="room_error">
                        </span>
                    </div>
                </div>
            </div>

            <div class="col-lg-12 text-center mt-40">
                <div class="mt-40 d-flex justify-content-between">
                    <button type="button" class="primary-btn tr-bg" data-dismiss="modal"><?php echo app('translator')->getFromJson('lang.cancel'); ?></button>

                    <button class="primary-btn fix-gr-bg" type="submit"><?php echo app('translator')->getFromJson('lang.save'); ?> <?php echo app('translator')->getFromJson('lang.information'); ?></button>
                </div>
            </div>
        </div>
    <?php echo e(Form::close()); ?>

</div>
