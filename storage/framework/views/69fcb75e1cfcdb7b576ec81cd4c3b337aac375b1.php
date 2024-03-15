<?php $__env->startSection('mainContent'); ?>
<section class="sms-breadcrumb mb-40 white-box">
    <div class="container-fluid">
        <div class="row justify-content-between">
            <h1>Book List</h1>
            <div class="bc-pages">
                <a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                <a href="#">Library</a>
                <a href="#">Book List</a>
            </div>
        </div>
    </div>
</section>
<section class="admin-visitor-area">
    <div class="container-fluid p-0">
    <div class="row mt-40">
        <div class="col-lg-12">
           <div class="row">
               <div class="col-lg-12">
                    <table id="table_id" class="display school-table" cellspacing="0" width="100%">

                        <thead> 
                            <?php if(session()->has('message-success') != "" ||
                                session()->get('message-danger') != ""): ?>
                            <tr>
                                <td colspan="10">
                                     <?php if(session()->has('message-success')): ?>
                                      <div class="alert alert-success">
                                          <?php echo e(session()->get('message-success')); ?>

                                      </div>
                                    <?php elseif(session()->has('message-danger')): ?>
                                      <div class="alert alert-danger">
                                          <?php echo e(session()->get('message-danger')); ?>

                                      </div>
                                    <?php endif; ?>
                                </td>
                            </tr> 
                            <?php endif; ?>
                            <tr>
                                <th>Book Title</th>
                                <th>Book No</th>
                                <th>ISBN No</th>
                                <th>Category</th>
                                <th>Subject</th>
                                <th>Publisher Name</th>
                                <th>Author Name</th>
                                <th>Quantity</th>
                                <th>Price</th>
                            </tr>
                        </thead>

                        <tbody>
                        
                            <?php $__currentLoopData = $books; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td><?php echo e($value->book_title); ?></td>
                                <td><?php echo e($value->book_number); ?></td>
                                <td><?php echo e($value->isbn_no); ?></td>
                                <td>
                                <?php if(!empty($value->book_category_id)): ?>
                                    <?php echo e($value->bookCategory->category_name); ?>

                                <?php endif; ?>
                                </td>
                                <td>
                                <?php if(!empty($value->subject)): ?>
                                 <?php echo e($value->bookSubject->subject_name); ?>

                                <?php endif; ?>
                                </td>
                                <td><?php echo e($value->publisher_name); ?></td>
                                <td><?php echo e($value->author_name); ?></td>
                                <td><?php echo e($value->quantity); ?></td>
                               <td><?php echo e($value->book_price); ?></td>
                                
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