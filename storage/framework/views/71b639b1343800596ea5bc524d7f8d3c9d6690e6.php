<?php $__env->startSection('mainContent'); ?>

<?php
    function showPicName($data){
        $name = explode('/', $data);
        return $name[4];
    }
?>

<?php  $setting = App\SmGeneralSettings::find(1);  if(!empty($setting->currency_symbol)){ $currency = $setting->currency_symbol; }else{ $currency = '$'; }   ?> 

<section class="student-details">
    <div class="container-fluid p-0">
        <div class="row">
            <div class="col-lg-3">
                <!-- Start Student Meta Information -->
                <div class="main-title">
                    <h3 class="mb-20">Student Profile</h3>
                </div>
                <div class="student-meta-box">
                    <div class="student-meta-top"></div>
                    <img class="student-meta-img img-100" src="<?php echo e(asset($student_detail->student_photo)); ?>" alt="">
                    <div class="white-box radius-t-y-0">
                        <div class="single-meta mt-10">
                            <div class="d-flex justify-content-between">
                                <div class="name">
                                    Student Name
                                </div>
                                <div class="value">
                                    <?php echo e($student_detail->first_name.' '.$student_detail->last_name); ?>

                                </div>
                            </div>
                        </div>
                        <div class="single-meta">
                            <div class="d-flex justify-content-between">
                                <div class="name">
                                    Admission Number
                                </div>
                                <div class="value">
                                    <?php echo e($student_detail->admission_no); ?>

                                </div>
                            </div>
                        </div>
                        <div class="single-meta">
                            <div class="d-flex justify-content-between">
                                <div class="name">
                                    Roll Number
                                </div>
                                <div class="value">
                                     <?php echo e($student_detail->roll_no); ?>

                                </div>
                            </div>
                        </div>
                        <div class="single-meta">
                            <div class="d-flex justify-content-between">
                                <div class="name">
                                    Class
                                </div>
                                <div class="value">
                                    <?php if($student_detail->className !="" && $student_detail->session !=""): ?>
                                   <?php echo e($student_detail->className->class_name); ?> (<?php echo e($student_detail->session->session); ?>)
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                        <div class="single-meta">
                            <div class="d-flex justify-content-between">
                                <div class="name">
                                    Section
                                </div>
                                <div class="value">
                                    <?php echo e($student_detail->section !=""?$student_detail->section->section_name:""); ?>

                                </div>
                            </div>
                        </div>
                        <div class="single-meta">
                            <div class="d-flex justify-content-between">
                                <div class="name">
                                    Gender
                                </div>
                                <div class="value">
                                    <?php echo e($student_detail->gender !=""?$student_detail->gender->base_setup_name:""); ?>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Student Meta Information -->

            </div>

            <!-- Start Student Details -->
            <div class="col-lg-9">
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" href="#studentProfile" role="tab" data-toggle="tab">profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#studentFees" role="tab" data-toggle="tab">fees</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#studentExam" role="tab" data-toggle="tab">exam</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#studentTimeline" role="tab" data-toggle="tab">timeline</a>
                    </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <!-- Start Profile Tab -->
                    <div role="tabpanel" class="tab-pane fade  show active" id="studentProfile">
                        <div class="white-box">
                            <h4 class="stu-sub-head">Personal info</h4>
                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5">
                                        <div class="">
                                            Admission Date
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-6">
                                        <div class="">
                                          
<?php echo e($student_detail->admission_date != ""? App\SmGeneralSettings::DateConvater($student_detail->admission_date):''); ?>



                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-6">
                                        <div class="">
                                            Date of birth
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-7">
                                        <div class="">
                                          
<?php echo e($student_detail->date_of_birth != ""? App\SmGeneralSettings::DateConvater($student_detail->date_of_birth ):''); ?>



                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-6">
                                        <div class="">
                                            Type
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-7">
                                        <div class="">
                                            <?php echo e($student_detail->category !=""?$student_detail->category->catgeory_name:""); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-6">
                                        <div class="">
                                            Religion
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-7">
                                        <div class="">
                                            <?php if(!empty($student_detail->religion)): ?>
                                            <?php echo e($student_detail->religion->base_setup_name); ?>

                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-6">
                                        <div class="">
                                            Phone Number
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-7">
                                        <div class="">
                                            <?php echo e($student_detail->mobile); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-6">
                                        <div class="">
                                            Email Address
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-7">
                                        <div class="">
                                            <?php echo e($student_detail->email); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-6">
                                        <div class="">
                                            Present Address
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-7">
                                        <div class="">
                                           <?php echo e($student_detail->current_address); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-6">
                                        <div class="">
                                            Permanent Address
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-7">
                                        <div class="">
                                            <?php echo e($student_detail->permanent_address); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Start Parent Part -->
                            <h4 class="stu-sub-head mt-40">Parent / Guardian Details</h4>
                            <div class="d-flex">
                                <div class="mr-20 mt-20">
                                    <img class="student-meta-img img-100" src="<?php echo e(asset($student_detail->parents->fathers_photo)); ?>" alt="">
                                </div>
                                <div class="w-100">
                                    <div class="single-info">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-6">
                                                <div class="">
                                                    Father’s Name
                                                </div>
                                            </div>

                                            <div class="col-lg-8 col-md-7">
                                                <div class="">
                                                    <?php if(!empty($student_detail->parents)): ?>
                                                    <?php echo e($student_detail->parents->fathers_name); ?>

                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="single-info">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-6">
                                                <div class="">
                                                    Occupation
                                                </div>
                                            </div>

                                            <div class="col-lg-8 col-md-7">
                                                <div class="">
                                                    <?php if(!empty($student_detail->parents)): ?>
                                                    <?php echo e($student_detail->parents->fathers_occupation); ?>

                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="single-info">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-6">
                                                <div class="">
                                                    Phone Number
                                                </div>
                                            </div>

                                            <div class="col-lg-8 col-md-7">
                                                <div class="">
                                                    <?php if(!empty($student_detail->parents)): ?>
                                                    <?php echo e($student_detail->parents->fathers_mobile); ?>

                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="d-flex">
                                <div class="mr-20 mt-20">
                                    <img class="student-meta-img img-100" src="<?php echo e(asset($student_detail->parents->mothers_photo)); ?>" alt="">
                                </div>
                                <div class="w-100">
                                    <div class="single-info">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-6">
                                                <div class="">
                                                    Mother’s Name
                                                </div>
                                            </div>

                                            <div class="col-lg-8 col-md-7">
                                                <div class="">
                                                    <?php if(!empty($student_detail->parents)): ?>
                                                    <?php echo e($student_detail->parents->mothers_name); ?>

                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="single-info">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-6">
                                                <div class="">
                                                    Occupation
                                                </div>
                                            </div>

                                            <div class="col-lg-8 col-md-7">
                                                <div class="">
                                                    <?php if(!empty($student_detail->parents)): ?>
                                                    <?php echo e($student_detail->parents->mothers_occupation); ?>

                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="single-info">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-6">
                                                <div class="">
                                                    Phone Number
                                                </div>
                                            </div>

                                            <div class="col-lg-8 col-md-7">
                                                <div class="">
                                                    <?php if(!empty($student_detail->parents)): ?>
                                                    <?php echo e($student_detail->parents->mothers_mobile); ?>

                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="d-flex">
                                <div class="mr-20 mt-20">
                                    <img class="student-meta-img img-100" src="<?php echo e(asset($student_detail->parents->guardians_photo)); ?>" alt="">
                                </div>
                                <div class="w-100">
                                    <div class="single-info">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-6">
                                                <div class="">
                                                    Guardian’s Name
                                                </div>
                                            </div>

                                            <div class="col-lg-8 col-md-7">
                                                <div class="">
                                                    <?php if(!empty($student_detail->parents)): ?>
                                                    <?php echo e($student_detail->parents->guardians_mobile); ?>

                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="single-info">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-6">
                                                <div class="">
                                                    Email Address
                                                </div>
                                            </div>

                                            <div class="col-lg-8 col-md-7">
                                                <div class="">
                                                    <?php if(!empty($student_detail->parents)): ?>
                                                    <?php echo e($student_detail->parents->guardians_email); ?>

                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="single-info">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-6">
                                                <div class="">
                                                    Phone Number
                                                </div>
                                            </div>

                                            <div class="col-lg-8 col-md-7">
                                                <div class="">
                                                    <?php if(!empty($student_detail->parents)): ?>
                                                    <?php echo e($student_detail->parents->guardians_phone); ?>

                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="single-info">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-6">
                                                <div class="">
                                                    Relation with Guardian
                                                </div>
                                            </div>

                                            <div class="col-lg-8 col-md-7">
                                                <div class="">
                                                    <?php if(!empty($student_detail->parents)): ?>
                                                    <?php echo e($student_detail->parents->guardians_relation); ?>

                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="single-info">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-6">
                                                <div class="">
                                                    Occupation
                                                </div>
                                            </div>

                                            <div class="col-lg-8 col-md-7">
                                                <div class="">
                                                    <?php if(!empty($student_detail->parents)): ?>
                                                    <?php echo e($student_detail->parents->guardians_occupation); ?>

                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="single-info">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-6">
                                                <div class="">
                                                    Guardian’s Address
                                                </div>
                                            </div>

                                            <div class="col-lg-8 col-md-7">
                                                <div class="">

                                                    <?php if(!empty($student_detail->parents)): ?>
                                                    <?php echo e($student_detail->parents->guardians_address); ?>

                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Parent Part -->

                            <!-- Start Transport Part -->
                            <h4 class="stu-sub-head mt-40">Transport and Dormitory Details</h4>
                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5">
                                        <div class="">
                                            Route
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-6">
                                        <div class=""> 
                                            <?php echo e(isset($student_detail->route_list_id)? $student_detail->route->title: ''); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5">
                                        <div class="">
                                            Vehicle Number
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-6">
                                        <div class="">
                                            <?php echo e(isset($student_detail->vechile_id)? $student_detail->vehicle->vehicle_no: ''); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5">
                                        <div class="">
                                            Driver Name
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-6">
                                        <div class="">
                                            <?php echo e(isset($student_detail->vechile_id)? $driver->full_name: ''); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5">
                                        <div class="">
                                            Driver Phone Number
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-6">
                                        <div class="">
                                            <?php echo e($student_detail->vechile_id != ""? $driver->mobile: ''); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5">
                                        <div class="">
                                            Dormitory Name
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-6">
                                        <div class="">
                                            <?php echo e($student_detail->dormitory_id != ""? $student_detail->dormitory->dormitory_name: ''); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Transport Part -->

                            <!-- Start Other Information Part -->
                            <h4 class="stu-sub-head mt-40">Other Information</h4>
                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5">
                                        <div class="">
                                            Blood Group
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-6">
                                        <div class="">
                                           <?php echo e(isset($student_detail->bloodgroup_id)? $student_detail->bloodGroup->base_setup_name: ''); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5">
                                        <div class="">
                                            Height
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-6">
                                        <div class="">
                                            <?php echo e(isset($student_detail->height)? $student_detail->height: ''); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5">
                                        <div class="">
                                            Weight
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-6">
                                        <div class="">
                                            <?php echo e(isset($student_detail->weight)? $student_detail->weight: ''); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5">
                                        <div class="">
                                            Previous School Details
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-6">
                                        <div class="">
                                            <?php echo e(isset($student_detail->previous_school_details)? $student_detail->previous_school_details: ''); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5">
                                        <div class="">
                                            National Identification Number
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-6">
                                        <div class="">
                                            <?php echo e(isset($student_detail->national_id_no)? $student_detail->national_id_no: ''); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5">
                                        <div class="">
                                            Local Identification Number
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-6">
                                        <div class="">
                                            <?php echo e(isset($student_detail->local_id_no)? $student_detail->local_id_no: ''); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5">
                                        <div class="">
                                            Bank Account Number
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-6">
                                        <div class="">
                                            <?php echo e(isset($student_detail->bank_account_no)? $student_detail->bank_account_no: ''); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5">
                                        <div class="">
                                            Bank Name
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-6">
                                        <div class="">
                                            <?php echo e(isset($student_detail->bank_name)? $student_detail->bank_name: ''); ?>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="single-info">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5">
                                        <div class="">
                                            IFSC Code
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-6">
                                        <div class="">
                                            UBC56987
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Other Information Part -->
                        </div>
                    </div>
                    <!-- End Profile Tab -->

                    <!-- Start Fees Tab -->
                    <div role="tabpanel" class="tab-pane fade" id="studentFees">
                        <table class="display school-table school-table-style" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Fees Group</th>
                                    <th>Fees Code</th>
                                    <th>Due Date</th>
                                    <th>Status</th>
                                    <th>Amount (<?php echo e($currency); ?>)</th>
                                    <th>Payment ID</th>
                                    <th>Mode</th>
                                    <th>Date</th>
                                    <th>Discount (<?php echo e($currency); ?>)</th>
                                    <th>Fine (<?php echo e($currency); ?>)</th>
                                    <th>Paid (<?php echo e($currency); ?>)</th>
                                    <th>Balance</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php
                                    $grand_total = 0;
                                    $total_fine = 0;
                                    $total_discount = 0;
                                    $total_paid = 0;
                                    $total_grand_paid = 0;
                                    $total_balance = 0;
                                ?>
                                <?php $__currentLoopData = $fees_assigneds; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $fees_assigned): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php
                                        if($fees_assigned->feesGroupMaster->fees_group_id != 1 && $fees_assigned->feesGroupMaster->fees_group_id != 2){
                                            $grand_total += $fees_assigned->feesGroupMaster->amount;
                                        }else{
                                            if($fees_assigned->feesGroupMaster->fees_group_id == 1){
                                                $grand_total += $student_detail->route->far;
                                            }else{
                                                $grand_total += $student_detail->room->cost_per_bed;
                                            }
                                        }
                                        
                                    ?>

                                    <?php
                                        $discount_amount = App\SmFeesAssign::discountSum($fees_assigned->student_id, $fees_assigned->feesGroupMaster->feesTypes->id, 'discount_amount');
                                        $total_discount += $discount_amount;
                                        $student_id = $fees_assigned->student_id;
                                    ?>
                                    <?php
                                        $paid = App\SmFeesAssign::discountSum($fees_assigned->student_id, $fees_assigned->feesGroupMaster->feesTypes->id, 'amount');
                                        $total_grand_paid += $paid;
                                    ?>
                                    <?php
                                        $fine = App\SmFeesAssign::discountSum($fees_assigned->student_id, $fees_assigned->feesGroupMaster->feesTypes->id, 'fine');
                                        $total_fine += $fine;
                                    ?>
                                        
                                    <?php
                                        $total_paid = $discount_amount + $paid;
                                    ?>
                                <tr>
                                    <td><?php echo e($fees_assigned->feesGroupMaster !=""?$fees_assigned->feesGroupMaster->feesGroups->name:""); ?></td>
                                    <td>
                                        <?php if($fees_assigned->feesGroupMaster !="" && $fees_assigned->feesGroupMaster->feesTypes !=""): ?>
                                        <?php echo e($fees_assigned->feesGroupMaster->feesTypes->name); ?>

                                        <?php endif; ?>
                                    </td>
                                    <td>
                                        <?php if($fees_assigned->feesGroupMaster !=""): ?>

                                        
<?php echo e($fees_assigned->feesGroupMaster->date != ""? App\SmGeneralSettings::DateConvater($fees_assigned->feesGroupMaster->date):''); ?>



                                        <?php endif; ?>
                                    </td>
                                    <td>
                                        <?php if($fees_assigned->feesGroupMaster->fees_group_id != 1 && $fees_assigned->feesGroupMaster->fees_group_id != 2): ?>
                                            <?php if($fees_assigned->feesGroupMaster->amount == $total_paid): ?>
                                            <button class="primary-btn small bg-success text-white border-0">Paid</button>
                                            <?php elseif($total_paid != 0): ?>
                                            <button class="primary-btn small bg-warning text-white border-0">Partial</button>
                                            <?php elseif($total_paid == 0): ?>
                                            <button class="primary-btn small bg-danger text-white border-0">Unpaid</button>
                                            <?php endif; ?>
                                        <?php else: ?>
                                            <?php if($fees_assigned->feesGroupMaster->fees_group_id == 1): ?>
                                                <?php if($student_detail->route->far == $total_paid): ?>
                                                <button class="primary-btn small bg-success text-white border-0">Paid</button>
                                                <?php elseif($total_paid != 0): ?>
                                                <button class="primary-btn small bg-warning text-white border-0">Partial</button>
                                                <?php elseif($total_paid == 0): ?>
                                                <button class="primary-btn small bg-danger text-white border-0">Unpaid</button>
                                                <?php endif; ?>
                                            <?php elseif($fees_assigned->feesGroupMaster->fees_group_id == 2): ?>
                                                <?php if($student_detail->room->cost_per_bed == $total_paid): ?>
                                                <button class="primary-btn small bg-success text-white border-0">Paid</button>
                                                <?php elseif($total_paid != 0): ?>
                                                <button class="primary-btn small bg-warning text-white border-0">Partial</button>
                                                <?php elseif($total_paid == 0): ?>
                                                <button class="primary-btn small bg-danger text-white border-0">Unpaid</button>
                                                <?php endif; ?>
                                            <?php endif; ?>    
                                        <?php endif; ?>    
                                    </td>
                                    <td>
                                        <?php
                                            if($fees_assigned->feesGroupMaster->fees_group_id != 1 && $fees_assigned->feesGroupMaster->fees_group_id != 2){
                                                echo $fees_assigned->feesGroupMaster->amount;
                                            }else{
                                                if($fees_assigned->feesGroupMaster->fees_group_id == 1){
                                                    echo $student_detail->route->far;
                                                }else{
                                                    echo $student_detail->room->cost_per_bed;
                                                }
                                            }
                                            
                                        ?>
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td> <?php echo e($discount_amount); ?> </td>
                                    <td><?php echo e($fine); ?></td>
                                    <td><?php echo e($paid); ?></td>
                                    <td>
                                        <?php 

                                            if($fees_assigned->feesGroupMaster->fees_group_id != 1 && $fees_assigned->feesGroupMaster->fees_group_id != 2){
                                                $rest_amount = $fees_assigned->feesGroupMaster->amount - $total_paid;
                                            }else{
                                                if($fees_assigned->feesGroupMaster->fees_group_id == 1){
                                                    $rest_amount = $student_detail->route->far - $total_paid;
                                                }else{
                                                    $rest_amount = $student_detail->room->cost_per_bed - $total_paid;
                                                }
                                            }

                                            $total_balance +=  $rest_amount;
                                            echo $rest_amount;
                                        ?>
                                    </td>
                                </tr>
                                    <?php 
                                        $payments = App\SmFeesAssign::feesPayment($fees_assigned->feesGroupMaster->feesTypes->id, $fees_assigned->student_id);
                                        $i = 0;
                                    ?>

                                    <?php $__currentLoopData = $payments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $payment): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="text-right"><img src="<?php echo e(asset('public/backEnd/img/table-arrow.png')); ?>"></td>
                                        <td>
                                            <?php
                                                $created_by = App\User::find($payment->created_by);
                                            ?>
                                            <?php if($created_by != ""): ?>
                                            <a href="#" data-toggle="tooltip" data-placement="right" title="<?php echo e('Collected By: '.$created_by->full_name); ?>"><?php echo e($payment->fees_type_id.'/'.$payment->id); ?></a></td>
                                            <?php endif; ?>
                                        <td>
                                        <?php if($payment->payment_mode == "C"): ?>
                                        <?php echo e('Cash'); ?>

                                <?php elseif($payment->payment_mode == "Cq"): ?>
                                    <?php echo e('Cheque'); ?>

                                <?php elseif('DD'): ?>
                                    <?php echo e('DD'); ?>

                                <?php elseif('PS'): ?>
                                    <?php echo e('Paystack'); ?>

                                    <?php endif; ?>
                                        </td>
                                        <td>
                                           
<?php echo e($payment->payment_date != ""? App\SmGeneralSettings::DateConvater($payment->payment_date):''); ?>


                                        </td>
                                        <td><?php echo e($payment->discount_amount); ?></td>
                                        <td><?php echo e($payment->fine); ?></td>
                                        <td><?php echo e($payment->amount); ?></td>
                                        <td></td>
                                    </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                               
                                
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th>Grand Total (<?php echo e($currency); ?>)</th>
                                    <th></th>
                                    <th><?php echo e($grand_total); ?></th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th><?php echo e($total_discount); ?></th>
                                    <th><?php echo e($total_fine); ?></th>
                                    <th><?php echo e($total_grand_paid); ?></th>
                                    <th><?php echo e($total_balance); ?></th>
                                    <th></th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <!-- End Profile Tab -->
                    
                    <!-- Start Exam Tab -->
                    <div role="tabpanel" class="tab-pane fade" id="studentExam">
                        <?php $__currentLoopData = $exams; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $exam): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                        <div class="white-box no-search no-paginate no-table-info mb-2">
                            <div class="main-title">
                                <h3 class="mb-0"><?php echo e($exam->exam !=""?$exam->exam->name:""); ?></h3>
                            </div>
                            <table id="table_id" class="display school-table" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th>Subject</th>
                                        <th>Full Marks</th>
                                        <th>Passing Marks</th>
                                        <th>Obtained Marks</th>
                                        <th>Results</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php
                                        $marks = App\SmStudent::marks($exam->exam_id, $student_detail->id);
                                        $grand_total = 0;
                                        $grand_total_marks = 0;
                                        $result = 0;

                                    ?>
                                    <?php $__currentLoopData = $marks; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $mark): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php
                                            $subject_marks = App\SmStudent::fullMarks($exam->id, $mark->subject_id);
                                            $result_subject = 0;
                                            $grand_total_marks += $subject_marks->full_mark;
                                            if($mark->abs == 0){
                                                $grand_total += $mark->marks;
                                                if($mark->marks < $subject_marks->pass_mark){
                                                   $result_subject++;
                                                   $result++;
                                                }

                                            }else{
                                                $result_subject++;
                                                $result++;
                                            }
                                        ?>
                                    <tr>
                                        <td><?php echo e($mark->subject !=""?$mark->subject->subject_name:""); ?></td>
                                        <td><?php echo e($subject_marks->full_mark); ?></td>
                                        <td><?php echo e($subject_marks->pass_mark); ?></td>
                                        <td><?php echo e($mark->marks); ?></td>
                                        <td>
                                            <?php if($result_subject == 0): ?>
                                                <button class="primary-btn small bg-success text-white border-0">Pass</button>
                                            <?php else: ?>
                                                <button class="primary-btn small bg-danger text-white border-0">Fail</button>
                                            <?php endif; ?>
                                        </td>
                                    </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th>Grand Total: <?php echo e($grand_total); ?>/<?php echo e($grand_total_marks); ?></th>
                                        <th></th>
                                        <th>Grade: 
                                            <?php
                                                if($result == 0 && $grand_total_marks != 0){
                                                    $percent = $grand_total/$grand_total_marks*100;
                                                    foreach($grades as $grade){
                                                       if($percent >= $grade->percent_from && $percent <= $grade->percent_upto){
                                                           echo $grade->grade_name;
                                                       }
                                                    }
                                                }else{
                                                    echo "F";
                                                }
                                            ?>
                                        </th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                         <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                    <!-- End Exam Tab -->
                  

                    <!-- Add Document modal form start-->
                    <div class="modal fade admin-query" id="add_document_madal">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Upload Document</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>

                                <div class="modal-body">
                                   <div class="container-fluid">
                                        <?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'route' => 'upload_document',
                                                            'method' => 'POST', 'enctype' => 'multipart/form-data', 'name' => 'document_upload'])); ?>

                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <input type="hidden" name="student_id" value="<?php echo e($student_detail->id); ?>">
                                                    <div class="row mt-25">
                                                        <div class="col-lg-12">
                                                            <div class="input-effect">
                                                                <input class="primary-input form-control{" type="text" name="title" value="" id="title">
                                                                <label>Title <span>*</span> </label>
                                                                <span class="focus-border"></span>
                                                                
                                                                <span class=" text-danger" role="alert" id="amount_error">
                                                                    
                                                                </span>
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12 mt-30">
                                                    <div class="row no-gutters input-right-icon">
                                                        <div class="col">
                                                            <div class="input-effect">
                                                                <input class="primary-input" type="text" id="placeholderPhoto" placeholder="Document"
                                                                    disabled>
                                                                <span class="focus-border"></span>
                                                            </div>
                                                        </div>
                                                        <div class="col-auto">
                                                            <button class="primary-btn-small-input" type="button">
                                                                <label class="primary-btn small fix-gr-bg" for="photo">browse</label>
                                                                <input type="file" class="d-none" name="photo" id="photo">
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>


                                                <!-- <div class="col-lg-12 text-center mt-40">
                                                    <button class="primary-btn fix-gr-bg" id="save_button_sibling" type="button">
                                                        <span class="ti-check"></span>
                                                        save information
                                                    </button>
                                                </div> -->
                                                <div class="col-lg-12 text-center mt-40">
                                                    <div class="mt-40 d-flex justify-content-between">
                                                        <button type="button" class="primary-btn tr-bg" data-dismiss="modal">Cancel</button>

                                                        <button class="primary-btn fix-gr-bg" type="submit">save</button>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php echo e(Form::close()); ?>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- Add Document modal form end-->
                    <!-- delete document modal -->

                    <!-- delete document modal -->
                    <!-- Start Timeline Tab -->
                    <div role="tabpanel" class="tab-pane fade" id="studentTimeline">
                        <div class="white-box">
                            <?php $__currentLoopData = $timelines; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $timeline): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="student-activities">
                                <div class="single-activity">
                                    <h4 class="title text-uppercase">
                                        
<?php echo e($timeline->date != ""? App\SmGeneralSettings::DateConvater($timeline->date):''); ?>


                                    </h4>
                                    <div class="sub-activity-box d-flex">
                                        <h6 class="time text-uppercase">10.30 pm</h6>
                                        <div class="sub-activity">
                                            <h5 class="subtitle text-uppercase"> <?php echo e($timeline->title); ?></h5>
                                            <p>
                                                <?php echo e($timeline->description); ?>

                                            </p>
                                        </div>

                                        <div class="close-activity">
                                            <?php if($timeline->file != ""): ?>
                                            <a href="<?php echo e(url('parent-download-timeline-doc/'.showPicName($timeline->file))); ?>" class="primary-btn tr-bg text-uppercase bord-rad">
                                                Download<span class="pl ti-download"></span>
                                            </a>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        </div>
                    </div>
                    <!-- End Timeline Tab -->
                </div>
            </div>
            <!-- End Student Details -->
        </div>

            
    </div>
</section>

<!-- timeline form modal start-->
<div class="modal fade admin-query" id="add_timeline_madal">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add Timeline</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <div class="modal-body">
               <div class="container-fluid">
                    <?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'route' => 'student_timeline_store',
                                        'method' => 'POST', 'enctype' => 'multipart/form-data', 'name' => 'document_upload'])); ?>

                        <div class="row">
                            <div class="col-lg-12">
                                <input type="hidden" name="student_id" value="<?php echo e($student_detail->id); ?>">
                                <div class="row mt-25">
                                    <div class="col-lg-12">
                                        <div class="input-effect">
                                            <input class="primary-input form-control{" type="text" name="title" value="" id="title">
                                            <label>Title <span>*</span> </label>
                                            <span class="focus-border"></span>
                                            
                                            <span class=" text-danger" role="alert" id="amount_error">
                                                
                                            </span>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 mt-30">
                                <div class="no-gutters input-right-icon">
                                    <div class="col">
                                        <div class="input-effect">
                                            <input class="primary-input date form-control" id="startDate" type="text"
                                                 name="date">
                                                <label>Date</label>
                                                <span class="focus-border"></span>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <button class="" type="button">
                                            <i class="ti-calendar" id="start-date-icon"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 mt-30">
                                <div class="input-effect">
                                    <textarea class="primary-input form-control" cols="0" rows="3" name="description" id="Description"></textarea>
                                    <label>Description<span></span> </label>
                                    <span class="focus-border textarea"></span>
                                </div>
                            </div>

                            <div class="col-lg-12 mt-30">
                                <div class="row no-gutters input-right-icon">
                                    <div class="col">
                                        <div class="input-effect">
                                            <input class="primary-input" type="text" id="placeholderFileFourName" placeholder="Document"
                                                disabled>
                                            <span class="focus-border"></span>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <button class="primary-btn-small-input" type="button">
                                            <label class="primary-btn small fix-gr-bg" for="document_file_4">browse</label>
                                            <input type="file" class="d-none" name="document_file_4" id="document_file_4">
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 mt-30">
                                
                                <input type="checkbox" id="currentAddressCheck" class="common-checkbox" name="visible_to_student" value="1">
                                <label for="currentAddressCheck">Visible to this person</label>
                            </div>


                            <!-- <div class="col-lg-12 text-center mt-40">
                                <button class="primary-btn fix-gr-bg" id="save_button_sibling" type="button">
                                    <span class="ti-check"></span>
                                    save information
                                </button>
                            </div> -->
                            <div class="col-lg-12 text-center mt-40">
                                <div class="mt-40 d-flex justify-content-between">
                                    <button type="button" class="primary-btn tr-bg" data-dismiss="modal">Cancel</button>

                                    <button class="primary-btn fix-gr-bg" type="submit">save</button>
                                </div>
                            </div>
                        </div>
                    <?php echo e(Form::close()); ?>

                </div>
            </div>

        </div>
    </div>
</div>
<!-- timeline form modal end-->




<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>