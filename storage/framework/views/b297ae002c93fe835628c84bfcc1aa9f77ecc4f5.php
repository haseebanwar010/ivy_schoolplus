<?php $__env->startSection('mainContent'); ?>
<section class="sms-breadcrumb mb-40 white-box">
    <div class="container-fluid">
        <div class="row justify-content-between">
            <h1>Notice Board</h1>
            <div class="bc-pages">
                <a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                <a href="#">Communicate</a>
                <a href="#">Notice Board</a>
            </div>
        </div>
    </div>
</section>

<section class="mb-40 sms-accordion">
    <div class="container-fluid p-0">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="main-title">
                    <h3 class="mb-30">All Notices</h3>
                </div>
            </div>
        </div>
              <?php if(session()->has('message-success-delete')): ?>
             <div class="alert alert-success">
             <?php echo e(session()->get('message-success-delete')); ?>

              </div>
              <?php elseif(session()->has('message-danger-delete')): ?>
              <div class="alert alert-danger">
                  <?php echo e(session()->get('message-danger-delete')); ?>

              </div>
              <?php endif; ?>
        <div class="row">
            <div class="col-lg-12">
                <div id="accordion">
                   <?php $i = 0; ?>
                   <?php if(isset($allNotices)): ?>
                   <?php $__currentLoopData = $allNotices; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                   <div class="card">
                     <a class="card-link" data-toggle="collapse" href="#notice<?php echo e($value->id); ?>">
                        <div class="card-header d-flex justify-content-between">

                            <?php echo e($value->notice_title); ?>

                        </div>
                    </a>
                    <?php $i++; ?>
                    <div id="notice<?php echo e($value->id); ?>" class="collapse <?php echo e($i ==  1 ? 'show' : ''); ?>" data-parent="#accordion">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-8">
                                    <?php echo e($value->notice_message); ?>

                                </div>
                                <div class="col-lg-4">
                                    <p class="mb-0">
                                        <span class="ti-calendar mr-10"></span>
                                        Publish Date : <?php echo e($value->publish_on != ""? App\SmGeneralSettings::DateConvater($value->publish_on):''); ?>





                                    </p>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


                <?php endif; ?>

                <?php if($allNotices->count()<1): ?>

                   <div class="card"> 
                        <div class="card-header d-flex justify-content-between">
                          Sorry ! There is no notice for you !
                        </div> 
                  </div>

                <?php endif; ?>
            </div>
        </div>
    </div>
</div>
</section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>