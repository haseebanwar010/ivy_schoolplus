<?php $__env->startSection('mainContent'); ?>
<section class="sms-breadcrumb mb-40 white-box">
    <div class="container-fluid">
        <div class="row justify-content-between">
            <h1>Subject</h1>
            <div class="bc-pages">
                <a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                <a href="<?php echo e(route('student_subject')); ?>">Subject</a>
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
                            <h3 class="mb-0">Subject List</h3>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">

                        <table id="table_id" class="display school-table" cellspacing="0" width="100%">

                            <thead>
                                <tr>
                                    <th>Subject</th>
                                    <th>Teacer</th>
                                    <th>Subject Type</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php $__currentLoopData = $assignSubjects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $assignSubject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td><?php echo e($assignSubject->subject!=""?$assignSubject->subject->subject_name:""); ?></td>
                                    <td><?php echo e($assignSubject->teacher!=""?$assignSubject->teacher->full_name:""); ?></td>
                                    <td>
                                        <?php if(!empty($assignSubject->subject)): ?>
                                        <?php echo e($assignSubject->subject->subject_type == "T"? 'Theory': 'Practical'); ?>

                                        <?php endif; ?>
                                    </td>
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
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>