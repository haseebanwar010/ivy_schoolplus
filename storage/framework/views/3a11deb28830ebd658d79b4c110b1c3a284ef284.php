<?php $__env->startSection('mainContent'); ?>
    <section class="sms-breadcrumb mb-40 white-box">
        <div class="container-fluid">
            <div class="row justify-content-between">
                <h1>Home Page</h1>
                <div class="bc-pages">
                    <a href="<?php echo e(url('dashboard')); ?>"><?php echo app('translator')->getFromJson('lang.dashboard'); ?></a>
                    <a href="#">Front Settings</a>
                    <a href="#">Home Page</a>
                </div>
            </div>
        </div>
    </section>
    <section class="admin-visitor-area">
        <div class="container-fluid p-0">
            <div class="row">
                        <div class="col-lg-12">
                            <div class="main-title">
                                <h3 class="mb-30">  Home Page Update </h3>
                            </div> 
                                <?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'url' => 'admin-home-page-update', 'method' => 'POST', 'enctype' => 'multipart/form-data'])); ?> 
                            <div class="white-box">

                                <div class="row">
                                    <div class="col-lg-12">
                                        <?php if(session()->has('message-success')): ?>
                                            <div class="alert alert-success">
                                                <?php echo app('translator')->getFromJson('lang.operation_success_message'); ?>
                                            </div> 
                                        <?php endif; ?>


                                    </div>
                                </div>



                                            <div class="row mt-20">  
                                                <div class="col-lg-6 mt-40"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="title" autocomplete="off" value="<?php echo e(isset($links)?$links->title:''); ?>">
                                                        <label>Title</label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div> 
                                                <div class="col-lg-6 mt-40"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="long_title" autocomplete="off"  value="<?php echo e(isset($links)?$links->long_title:''); ?>" >
                                                        <label>Heading </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>
                                            </div>   
                                            <div class="row mt-20">  
                                                <div class="col-lg-12 mt-40"> 
                                                    <div class="input-effect">
                                                        <input class="primary-input form-control" type="text" name="short_description" autocomplete="off" value="<?php echo e(isset($links)?$links->short_description:''); ?>">
                                                        <label>Short Description </label>
                                                        <span class="focus-border"></span>
                                                    </div> 
                                                </div>  
                                            </div>   

 
                                            <div class="row mt-20">  
                                                <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
                                                <div class="col-lg-4 mt-40"> 
                                                    <img src="<?php echo e(isset($links)?$links->image:''); ?>" style="width: 100%; height: auto;" alt="<?php echo e(isset($links)?$links->title:''); ?>" id="blah">
                                              
                                                    
                                                    <div class="row no-gutters input-right-icon mt-20">
                                                        <div class="col">
                                                            <div class="input-effect">
                                                                <input class="primary-input" type="text" id="placeholderFileFourName" placeholder="Upload Background Image (1420x670)"
                                                                    readonly="">
                                                                <span class="focus-border"></span>
                                                            </div>
                                                        </div>
                                                        <div class="col-auto">
                                                            <button class="primary-btn-small-input" type="button">
                                                                <label class="primary-btn small fix-gr-bg" for="imgInp"><?php echo app('translator')->getFromJson('lang.browse'); ?></label>
                                                                <input type="file" class="d-none" name="image" id="imgInp">
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div> 

                                                <div class="col-lg-4 mt-40"> </div>
                                                <div class="col-lg-4 mt-40"> 
                                                    <p>Set permission in <b>HOME</b></p>

                                        <?php if(count($errors) > 0): ?>
                                                <div class="alert alert-danger">
                                                 
                                                        <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <p><?php echo e($error); ?></p>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                  
                                                </div>
                                        <?php endif; ?>
                                        
                                                    <hr>
                                                    <?php $__currentLoopData = $permisions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <input type="checkbox" id="P<?php echo e($row->id); ?>" class="common-checkbox form-control<?php echo e($errors->has('permisions') ? ' is-invalid' : ''); ?>"  name="permisions[]" value="<?php echo e($row->id); ?>" <?php echo e(($row->is_published==1)? 'checked': ''); ?>>
                                                    <label for="P<?php echo e($row->id); ?>"> <?php echo e($row->name); ?> </label> 
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    <span></span>

                                                </div>

                                            </div>    
                                            <div class="row mt-40">
                                                <div class="col-lg-12 text-center">
                                                    <button class="primary-btn fix-gr-bg">
                                                        <span class="ti-check"></span> 
                                                            <?php echo app('translator')->getFromJson('lang.update'); ?> 
                                                    </button>
                                                </div>
                                            </div>


                            </div>
                            <?php echo e(Form::close()); ?>

                        </div> 
                </div>
 
            </div>
        </div>
    </section>

 
<?php $__env->stopSection(); ?>


<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>