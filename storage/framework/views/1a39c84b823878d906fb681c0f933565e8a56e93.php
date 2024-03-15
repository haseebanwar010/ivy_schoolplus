<?php $__env->startSection('mainContent'); ?>
<section class="sms-breadcrumb mb-40 white-box">
    <div class="container-fluid">
        <div class="row justify-content-between">
            <h1>Transport</h1>
            <div class="bc-pages">
                <a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                <a href="<?php echo e(route('student_subject')); ?>">Transport</a>
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
                            <h3 class="mb-30">Transport Route list</h3>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">

                        <table id="table_id" class="display school-table" cellspacing="0" width="100%">

                            <thead>
                                <tr>
                                    <th>Route</th>
                                    <th>Vehicle</th> 
                                </tr>
                            </thead>
                            <tbody>
                                <?php $__currentLoopData = $routes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $route): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td valign="top"><?php echo e($route->route->title); ?></td>
                                    <td>
                                        <table>
                                            <?php
                                              $vehicles = explode(",",$route->vehicle_id);
                                            ?>
                                            <?php $__currentLoopData = $vehicles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $vehicle): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <tr>
                                                <td>
                                                    <?php $vehicle = App\SmVehicle::find($vehicle);
                                                    ?>
                                                    <?php echo e($vehicle->vehicle_no); ?>



                                                </td>
                                                <td >
                                                    <div class="col-sm-6">
                                                        
                                                    <?php if($student_detail->route_list_id == $route->route->id && $student_detail->vechile_id == $vehicle->id): ?>
                                                        <a href="javascript:void(0)" class="primary-btn small fix-gr-bg">Assigned</a> 
                                                    <?php endif; ?>
                                                    </div>
                                                     
                                                    <div class="col-sm-6">
                                                         
                                                         <a class="primary-btn small fix-gr-bg modalLink" title="Transport Details" data-modal-size="modal" href="<?php echo e(route('student_transport_view_modal', [$route->route->id, $vehicle->id])); ?>">View</a>
                                                   
                                                    </div>
                                                    

                                                </td>

                                                
                                            </tr>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                        </table>
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