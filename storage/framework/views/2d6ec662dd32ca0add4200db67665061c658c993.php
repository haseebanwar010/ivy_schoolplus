<script src="<?php echo e(asset('public/backEnd/')); ?>/js/main.js"></script>

<?php

$start = strtotime($leaveDetails->leave_from);
$end = strtotime($leaveDetails->leave_to);

$days_between = ceil(abs($end - $start) / 86400);
$days = $days_between + 1;
?>
<div class="container-fluid">
<div class="student-details">
    <div class="row">
        <div class="<?php echo e(isset($apply)? 'col-md-12':'col-md-8'); ?>">
            <div class="student-meta-box">
                <div class="single-meta">
                    <div class="row">
                        <div class="col-lg-2 col-md-5">
                            <div class="value text-left">
                                Leave Type
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-7">
                            <div class="name">
                                <?php if($leaveDetails->leaveDefine !="" && $leaveDetails->leaveDefine->leaveType !=""): ?>
                                        <?php echo e($leaveDetails->leaveDefine->leaveType->type); ?>

                                <?php endif; ?>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-5">
                            <div class="value text-left">
                                Duration
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-7">
                            <div class="name">
                            <?php echo e($days == 1? $days.' day': $days.' days'); ?>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="single-meta">
                    <div class="row">
                        <div class="col-lg-2 col-md-5">
                            <div class="value text-left">
                                Leave From
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-7">
                            <div class="name">
                               

 <?php echo e($leaveDetails->leave_from != ""? App\SmGeneralSettings::DateConvater($leaveDetails->leave_from):''); ?>


                            </div>
                        </div>
                        <div class="col-lg-2 col-md-5">
                            <div class="value text-left">
                                Leave To
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-7">
                            <div class="name">
                          
<?php echo e($leaveDetails->leave_to != ""? App\SmGeneralSettings::DateConvater($leaveDetails->leave_to):''); ?>



                            </div>
                        </div>
                    </div>
                </div>

                <div class="single-meta">
                    <div class="row">
                        <div class="col-lg-2 col-md-5">
                            <div class="value text-left">
                                Apply Date
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-7">
                            <div class="name"> 
<?php echo e($leaveDetails->apply_date != ""? App\SmGeneralSettings::DateConvater($leaveDetails->apply_date):''); ?>



                            </div>
                        </div>
                        
                </div>
            </div>
            <div class="single-meta">
                <div class="row">
                    <div class="col-lg-2 col-md-2">
                        <div class="value text-left">
                            Reason
                        </div>
                    </div>
                    <div class="col-lg-10 col-md-10">
                        <div class="name">
                            <?php echo e($leaveDetails->reason); ?>

                        </div>
                    </div>
                </div>
            </div>


            <?php if(!isset($apply)): ?>

            <?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'url' => 'update-approve-leave',
                        'method' => 'POST', 'enctype' => 'multipart/form-data'])); ?>

                        <input type="hidden" name="id" value="<?php echo e($leaveDetails->id); ?>">
            <div class="single-meta mt-40">
                <div class="row">
                    <div class="col-lg-2 col-md-5">
                        <div class="value text-left">
                            Leave Status
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-7">
                        <div class="d-flex radio-btn-flex flex-column">
                            <div class="">
                                <input type="radio" name="approve_status"  value="P" class="common-radio" id="P" <?php echo e($leaveDetails->approve_status == "P"? 'checked':''); ?>>
                                <label for="P">Pending</label>
                                
                            </div>
                            <div class="">
                                <input type="radio" name="approve_status"  value="A" class="common-radio" id="A" <?php echo e($leaveDetails->approve_status == "A"? 'checked':''); ?>>
                                <label for="A">Approve</label>
                                
                            </div>
                           <div class="">
                                <input type="radio" name="approve_status"  value="C" class="common-radio" id="C" <?php echo e($leaveDetails->approve_status == "C"? 'checked':''); ?>>
                                <label for="C">Cancel</label>
                               
                            </div>
                          
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-meta mt-30">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <button class="primary-btn fix-gr-bg">
                            <span class="ti-check"></span>
                            Save leave Status
                        </button>
                    </div>
                       
                </div>
            </div>
            <?php echo e(Form::close()); ?>

            <?php endif; ?>
        </div>
        </div>
        <?php if(!isset($apply)): ?>
        <div class="col-md-4">
                <!-- Start Student Meta Information -->
                <div class="student-meta-box">
                    <h5 class="mt-20 mb-20">Staff Details</h5>
                    <div class="white-box-modal radius-t-y-0">

                        <div class="single-meta mt-10">
                            <div class="d-flex justify-content-between">
                                <div class="name">
                                    Staff Name
                                </div>
                                <div class="value">
                                    <?php echo e($leaveDetails->staffs != ""? $leaveDetails->staffs->full_name:''); ?>

                                </div>
                            </div>
                        </div>
                        <div class="single-meta">
                            <div class="d-flex justify-content-between">
                                <div class="name">
                                    Staff No
                                </div>
                                <div class="value">
                                    <?php echo e($leaveDetails->staffs != ""? $leaveDetails->staffs->staff_no:''); ?>

                                </div>
                            </div>
                        </div>
                        <div class="single-meta">
                            <div class="d-flex justify-content-between">
                                <div class="name">
                                    Joining Date
                                </div>
                                <div class="value">
                                   
<?php echo e($leaveDetails->staffs->date_of_joining != ""? App\SmGeneralSettings::DateConvater($leaveDetails->staffs->date_of_joining):''); ?>



                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="leave-details">
                    <h5 class="mt-20 mb-20">Leave Details</h5>
                            <table class="display school-table school-table-style-modal" cellspacing="0" width="100%">

                            <thead>
                                
                                <tr>
                                    <th>Type</th>
                                    <th>Remaining Days</th>
                                    <th>Extra Taken</th>
                                    <th>Total Days</th>
                                </tr>
                            </thead>

                            <tbody>
                            <?php $__currentLoopData = $staff_leaves; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $staff_leave): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php

                            $approved_leaves = App\SmLeaveRequest::approvedLeaveModal($staff_leave->id, $leaveDetails->role_id, $leaveDetails->staff_id);
                                $remaining_days = $staff_leave->days - $approved_leaves;
                            ?>
                            <tr>
                                <td><?php echo e($staff_leave->leaveType->type); ?></td>
                                <td><?php echo e($remaining_days >= 0? $remaining_days:0); ?></td>

                                <td><?php echo e($remaining_days < 0? $approved_leaves - $staff_leave->days:0); ?></td>
                                <td><?php echo e($staff_leave->days); ?></td>
                            </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tbody>
                        </table>
                    </div>

                </div>
                <!-- End Student Meta Information -->

        </div>
        <?php endif; ?>
    </div>
    
</div>
</div>


<!-- <div class="col-lg-12 text-center mt-40">
    <div class="mt-40 d-flex justify-content-between">
        <button type="button" class="primary-btn tr-bg" data-dismiss="modal">Cancel</button>

        <button class="primary-btn fix-gr-bg" id="" data-dismiss="modal" type="button">save information</button>
    </div>
</div> -->
