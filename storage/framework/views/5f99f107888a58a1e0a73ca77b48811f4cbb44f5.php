<?php $__env->startSection('mainContent'); ?>


    <section class="sms-breadcrumb mb-40 white-box">
        <div class="container-fluid">
            <div class="row justify-content-between">
                <h1><?php echo app('translator')->getFromJson('lang.role_permission'); ?> </h1>
                <div class="bc-pages">
                    <a href="<?php echo e(url('dashboard')); ?>"><?php echo app('translator')->getFromJson('lang.dashboard'); ?></a>
                    <a href="#"><?php echo app('translator')->getFromJson('lang.system_settings'); ?></a>
                    <a href="#"><?php echo app('translator')->getFromJson('lang.role_permission'); ?></a>
                </div>
            </div>
        </div>
    </section>


    <section class="admin-visitor-area up_admin_visitor empty_table_tab">
        <div class="container-fluid p-0">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab"
                               aria-controls="home" aria-selected="true">Empty Sample Data </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                               aria-controls="profile" aria-selected="false">Restore Data</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                            <div class="white-box">
                                <div class="add-visitor">
                                    <div class="row">
                                        <?php echo e(Form::open(['class' => 'form-horizontal', 'files' => true, 'url' => 'database-delete','method' => 'POST'])); ?>


                                        <div class="col-lg-12 text-center">
                                            <h5 class="text-center"> All Database Table List</h5>
                                        </div>

                                        <div class="col-lg-12">
                                            <?php if(session()->has('message-success')): ?>
                                                <div class="alert alert-success">
                                                    <?php echo e(session()->get('message-success')); ?>

                                                </div>
                                            <?php elseif(session()->has('message-danger')): ?>
                                                <div class="alert alert-danger">
                                                    <?php echo e(session()->get('message-danger')); ?>

                                                </div>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                    <div class="row mt-40 mb-30">


                                        <?php $count = 0;

                                        foreach($table_list_with_count as $row){
                                        $name = str_replace('sm_', '', $row);
                                        $name = str_replace('_', ' ', $name);
                                        $name = ucfirst($name);
                                        $notdeleteable = [
                                            'users', 'sm_role_permissions', 'sm_modules', 'sm_module_links', 'sm_base_setups',
                                            'sm_base_groups', 'roles', 'languages', 'sm_languages', 'sm_language_phrases', 'sm_countries',
                                            'sm_currencies', 'sm_general_settings', 'continents', 'sm_email_settings', 'password_resets',
                                            'sm_backups', 'sm_dashboard_settings', 'sm_date_formats', 'sm_frontend_persmissions', 'migrations',
                                            'countries', 'sm_about_pages', 'sm_contact_pages', 'sm_testimonials', 'sm_home_page_settings', 'sm_courses',
                                            'sm_academic_years', 'sm_payment_gateway_settings', 'sm_sms_gateways', 'sm_payment_methhods',
                                            'sm_background_settings', 'sm_dashboard_settings', 'sm_setup_admins', 'sm_custom_links', 'sm_weekends',
                                            'sm_schools', 'sm_marks_grades','sm_styles','sm_news_categories','sm_events'];

                                        if(!in_array($table_list[$count], $notdeleteable)){
                                        ?>
                                        <div class="col-lg-4">
                                            <input type="checkbox" id="D<?php echo e($table_list[$count]); ?>"
                                                   class="common-checkbox form-control<?php echo e($errors->has('permisions') ? ' is-invalid' : ''); ?>"
                                                   name="permisions[]" value="<?php echo e($table_list[$count]); ?>">
                                            <label for="D<?php echo e($table_list[$count]); ?>"> <?php echo e($name); ?> </label>
                                        </div>
                                        <?php
                                        }
                                        $count++;
                                        }
                                        ?>
                                    </div>


                                    <div class="row">
                                        <div class="col-lg-9 text-right">
                                            <div class="primary-btn fix-gr-bg">
                                                <input id="selectAll" class="common-checkbox form-control"
                                                       type="checkbox" name="select-all"/><label for="selectAll"> Select
                                                    All</label>
                                            </div>
                                        </div>

                                        <div class="col-lg-3 text-right">


         

                                            <button class="primary-btn fix-gr-bg small">
                                                <span class="ti-check"></span>
                                                Empty Sample Data
                                            </button>
                                        </div>
                                    </div>
                                    <?php echo e(Form::close()); ?>


                                </div>
                            </div>

                        </div>
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                            <div class="white-box">
                                <div class="add-visitor">
                                    <div class="row">

                                        <div class="col-lg-9 text-center">
                                            <p class="text-left"> All sample data will restore in your database. Your
                                                existing data will be damage, so please take backup before restore. </p>
                                        </div>
                                        <div class="col-lg-3 text-right">

                    

                                            <a href="<?php echo e(url('database-restore')); ?>" class="primary-btn fix-gr-bg small"> <span  class="ti-check"></span> Sample Data Restore </a>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script language="JavaScript">

        $('#selectAll').click(function () {
            $('input:checkbox').prop('checked', this.checked);

        });


    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), array('__data', '__path')))->render(); ?>