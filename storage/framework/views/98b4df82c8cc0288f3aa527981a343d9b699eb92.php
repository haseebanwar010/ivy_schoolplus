<?php $__env->startSection('mainContent'); ?>
<section class="sms-breadcrumb mb-40 white-box">
    <div class="container-fluid">
        <div class="row justify-content-between">
            <h1>Student Book Issue</h1>
            <div class="bc-pages">
                <a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                <a href="#">Library</a>
                <a href="#">Student Book Issue</a>
            </div>
        </div>
    </div>
</section>
<section class="admin-visitor-area">
<div class="row mt-40">
    <div class="col-lg-12">
        <div class="row">
            <div class="col-lg-4 no-gutters">
                <div class="main-title">
                    <h3 class="mb-0">All Issued Book List</h3>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <table id="table_id" class="display school-table" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th>Book Title</th>
                            <th>Book No</th>
                            <th>ISBN No</th>
                           
                            <th>Author</th>
                            <th>Subject</th>
                            <th>Issue Date</th>
                            <th>Return Date</th>
                            <th>Status</th>

                        </tr>
                    </thead>
                    <tbody>
                        <?php $__currentLoopData = $issueBooks; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                           <td><?php echo e($value->books !=""?$value->books->book_title:""); ?></td>
                           <td><?php echo e($value->books !=""?$value->books->book_number:""); ?></td>
                           <td><?php echo e($value->books !=""?$value->books->isbn_no:""); ?></td>

                              <td><?php echo e($value->books !=""?$value->books->author_name:""); ?></td>
                              <td><?php echo e($value->books->bookSubject !=""?$value->books->bookSubject->subject_name:""); ?></td>

                              <td  data-sort="<?php echo e(strtotime($value->given_date)); ?>" >
                               <?php echo e($value->given_date != ""? App\SmGeneralSettings::DateConvater($value->given_date):''); ?>


                              </td>
                              <td  data-sort="<?php echo e(strtotime($value->due_date)); ?>" >
                               <?php echo e($value->due_date != ""? App\SmGeneralSettings::DateConvater($value->due_date):''); ?>


                              </td>
                              <td>
                              <?php if($value->issue_status == 'I'): ?>
                           
                               <button class="primary-btn small bg-success text-white border-0">Issued</button>
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