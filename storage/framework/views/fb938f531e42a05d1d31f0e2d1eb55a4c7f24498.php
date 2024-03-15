<script src="<?php echo e(asset('public/backEnd/')); ?>/js/main.js"></script>

<?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'route' => 'admission_query_update', 'method' => 'POST', 'enctype' => 'multipart/form-data', 'id' => 'admission-query-update'])); ?>

<input type="hidden" name="id" value="<?php echo e($admission_query->id); ?>">
<div class="modal-body">
    <div class="container-fluid">
        <form action="">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="input-effect">
                                <input class="primary-input read-only-input form-control" type="text" name="name" id="name" value="<?php echo e($admission_query->name); ?>">
                                <label><?php echo app('translator')->getFromJson('lang.name'); ?> <span>*</span></label>
                                <span class="text-danger" role="alert" id="nameError">
                                </span>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="input-effect">
                                <input class="primary-input read-only-input form-control" type="text" name="phone" id="phone" value="<?php echo e($admission_query->phone); ?>">
                                <label><?php echo app('translator')->getFromJson('lang.phone'); ?> <span>*</span></label>
                                <span class="text-danger" role="alert" id="phoneError">
                                   
                                </span>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="input-effect">
                                <input class="primary-input read-only-input form-control" type="text" name="email" value="<?php echo e($admission_query->email); ?>">
                                <label><?php echo app('translator')->getFromJson('lang.email'); ?> <span></span></label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 mt-25">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="input-effect">
                                <textarea class="primary-input form-control" cols="0" rows="3" name="address" id="address"><?php echo e($admission_query->address); ?></textarea>
                                <label><?php echo app('translator')->getFromJson('lang.address'); ?> <span></span> </label>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="input-effect">
                                <textarea class="primary-input form-control" cols="0" rows="3" name="description" id="description"><?php echo e($admission_query->description); ?></textarea>
                                <label><?php echo app('translator')->getFromJson('lang.description'); ?> <span></span> </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 mt-25">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="no-gutters input-right-icon">
                                <div class="col">
                                    <div class="input-effect">
                                        <input class="primary-input date form-control" id="startDate" type="text"
                                             name="date" readonly="true" value="<?php echo e($admission_query->date != ""? date('m/d/Y', strtotime($admission_query->date)) : date('m/d/Y')); ?>">
                                        <label><?php echo app('translator')->getFromJson('lang.date'); ?></label>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <button class="" type="button">
                                        <i class="ti-calendar" id="start-date-icon"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="no-gutters input-right-icon">
                                <div class="col">
                                    <div class="input-effect">
                                        <input class="primary-input date form-control" id="endDate" type="text"
                                             name="next_follow_up_date" autocomplete="off" readonly="true"  value="<?php echo e($admission_query->next_follow_up_date != ""? date('m/d/Y', strtotime($admission_query->next_follow_up_date)) : date('m/d/Y')); ?>">
                                        <label><?php echo app('translator')->getFromJson('lang.next_follow_up_date'); ?></label>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <button class="" type="button">
                                        <i class="ti-calendar" id="end-date-icon"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="input-effect">
                                <input class="primary-input read-only-input form-control" type="text" name="assigned" value="<?php echo e($admission_query->assigned); ?>">
                                <label><?php echo app('translator')->getFromJson('lang.assigned'); ?> <span></span></label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 mt-25">
                    <div class="row">
                        <div class="col-lg-3">
                            <select class="niceSelect w-100 bb" name="reference">
                                <option data-display="<?php echo app('translator')->getFromJson('lang.reference'); ?>" value=""><?php echo app('translator')->getFromJson('lang.reference'); ?></option>
                                <?php $__currentLoopData = $references; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $reference): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($reference->id); ?>" <?php echo e($reference->id == $admission_query->reference? 'selected':''); ?>><?php echo e($reference->name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                            </select>
                        </div>
                        <div class="col-lg-3">
                            <select class="niceSelect w-100 bb" name="source" id="source">
                                <option data-display="<?php echo app('translator')->getFromJson('lang.source'); ?> *" value=""><?php echo app('translator')->getFromJson('lang.source'); ?> *</option>
                                <?php $__currentLoopData = $sources; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $source): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($source->id); ?>" <?php echo e($source->id == $admission_query->source? 'selected':''); ?>><?php echo e($source->name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </select>
                            <span class="text-danger" role="alert" id="sourceError">
                                
                            </span>
                        </div>
                        <div class="col-lg-3">
                            <select class="niceSelect w-100 bb" name="class" id="class">
                                <option data-display="<?php echo app('translator')->getFromJson('lang.class'); ?>" value=""><?php echo app('translator')->getFromJson('lang.class'); ?></option>
                                <?php $__currentLoopData = $classes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $class): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($class->id); ?>" <?php echo e($class->id == $admission_query->class? 'selected':''); ?>><?php echo e($class->class_name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </select>
                            
                        </div>
                        <div class="col-lg-3">
                            <div class="input-effect">
                                <input class="primary-input form-control" type="text" name="no_of_child" value="<?php echo e($admission_query->no_of_child); ?>">
                                <label><?php echo app('translator')->getFromJson('lang.number_of_child'); ?> <span></span></label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12 text-center mt-40">
                    <div class="mt-40 d-flex justify-content-between">
                        <button type="button" class="primary-btn tr-bg" data-dismiss="modal"><?php echo app('translator')->getFromJson('lang.cancel'); ?></button>

                        <button class="primary-btn fix-gr-bg" id="save_button_query" type="submit"><?php echo app('translator')->getFromJson('lang.update'); ?></button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<?php echo e(Form::close()); ?>


   
<!-- End Sibling Add Modal -->
