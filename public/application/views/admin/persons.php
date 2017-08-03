<!-- Navbar -->
<div id="main-navbar">
    <?= $this->load->view('admin/navbar', '', TRUE) ?>
</div>

<!-- Dashboard -->
<div id="dashboard">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-xs-12">
                <div class="page-title">
                    <h6>List of <?= $page_title ?></h6>
                    <h2><?= $page_title ?></h2>
                    <hr/>
                </div>
                <div class="btn-group-wrapper pull-right">
                    <div class="btn-group">
                        <a class="btn btn-default" data-toggle="modal" href="#add-person"><i class="material-icons md-18">person_add</i></a>
                        <a id="reload" class="btn btn-default" href="#"><i class="material-icons md-18">refresh</i></a>
                    </div>
                </div>
                <table id="datatables" class="table table-bordered table-striped table-hover" cellspacing="0" width="100%">
                    <thead>
                    <tr>
                        <th></th>
                        <th>Full Name</th>
                        <th>Is Candidate?</th>
                        <th>Is Validated?</th>
                        <th>Is Voted?</th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Modal (Add Person) -->
<div class="modal fade" id="add-person" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><i class="material-icons">clear</i></span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Add Person</h4>
            </div>
            <form id="add-person-form">
                <div class="modal-body">
                    <div id="ajax-preloader"></div>
                    <div id="ajax-response"></div>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-2 col-md-2 col-xs-12">
                                <div class="form-group prefix">
                                    <label class="control-label" for="prefix">Prefix</label>
                                    <input type="text" id="prefix" class="form-control" name="prefix" tabindex="1">
                                </div>
                            </div>
                            <div class="col-lg-5 col-md-5 col-xs-12">
                                <div class="form-group first-name">
                                    <label class="control-label" for="first-name">First Name<span class="important">*</span></label>
                                    <input type="text" id="first-name" class="form-control" name="first_name" tabindex="2">
                                </div>
                            </div>
                            <div class="col-lg-5 col-md-5 col-xs-12">
                                <div class="form-group middle-name">
                                    <label class="control-label" for="middle-name">Middle Name</label>
                                    <input type="text" id="middle-name" class="form-control" name="middle_name" tabindex="3">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-xs-12">
                                <div class="form-group last-name">
                                    <label class="control-label" for="last-name">Last Name<span class="important">*</span></label>
                                    <input type="text" id="last-name" class="form-control" name="last_name" tabindex="4">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-xs-12">
                                <div class="form-group suffix">
                                    <label class="control-label" for="suffix">Suffix</label>
                                    <input type="text" id="suffix" class="form-control" name="suffix" tabindex="5">
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-xs-12">
                                <div class="form-group gender">
                                    <label class="control-label" for="gender">Gender<span class="important">*</span></label>
                                    <div class="checkbox">
                                        <label>
                                            <input type="radio" id="gender" class="icheck" name="gender" value="Male" tabindex="6"> Male
                                        </label>
                                        <label>
                                            <input type="radio" id="gender" class="icheck" name="gender" value="Female" tabindex="7"> Female
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div>
                        <button type="submit" id="btn-change-state" class="btn btn-lg btn-primary btn-rounded-corner" data-loading-text="loading..." tabindex="7">Submit</button>
                        <button type="button" class="btn btn-lg btn-default btn-rounded-corner" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal (View & Update Person) -->
<div class="modal fade" id="person-details" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><i class="material-icons">clear</i></span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Update Person</h4>
            </div>
            <form id="update-person-form">
                <div class="modal-body">
                    <input type="hidden" name="id" value="">
                    <input type="hidden" name="qrcode" value="">
                    <div id="ajax-preloader"></div>
                    <div id="ajax-response"></div>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-xs-12">
                                <div class="form-group access-code">
                                    <label class="control-label" for="access-code">Access Code<span class="important">&ast;</span></label>
                                    <input type="text" id="access-code" class="form-control" name="access_code" tabindex="1">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-xs-12">
                                <div class="qrcode text-center">
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-2 col-xs-12">
                                <div class="form-group prefix">
                                    <label class="control-label" for="prefix">Prefix</label>
                                    <input type="text" id="prefix" class="form-control" name="prefix" tabindex="2">
                                </div>
                            </div>
                            <div class="col-lg-5 col-md-5 col-xs-12">
                                <div class="form-group first-name">
                                    <label class="control-label" for="first-name">First Name<span class="important">&ast;</span></label>
                                    <input type="text" id="first-name" class="form-control" name="first_name" tabindex="3">
                                </div>
                            </div>
                            <div class="col-lg-5 col-md-5 col-xs-12">
                                <div class="form-group middle-name">
                                    <label class="control-label" for="middle-name">Middle Name</label>
                                    <input type="text" id="middle-name" class="form-control" name="middle_name" tabindex="4">
                                </div>
                            </div>
                            <div class="col-lg-7 col-md-7 col-xs-12">
                                <div class="form-group last-name">
                                    <label class="control-label" for="last-name">Last Name<span class="important">&ast;</span></label>
                                    <input type="text" id="last-name" class="form-control" name="last_name" tabindex="5">
                                </div>
                            </div>
                            <div class="col-lg-5 col-md-5 col-xs-12">
                                <div class="form-group suffix">
                                    <label class="control-label" for="suffix">Suffix</label>
                                    <input type="text" id="suffix" class="form-control" name="suffix" tabindex="6">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div>
                        <button type="submit" id="btn-change-state" class="btn btn-lg btn-primary btn-rounded-corner" data-loading-text="loading..." tabindex="9">Submit</button>
                        <button type="button" class="btn btn-lg btn-default btn-rounded-corner" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal (Delete Person) -->
<div class="modal fade" id="delete-person" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><i class="material-icons">clear</i></span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Delete Record</h4>
            </div>
            <form id="delete-person-form">
                <div class="modal-body">
                    <input type="hidden" name="id" value="">
                    <div id="ajax-preloader"></div>
                    <div id="ajax-response"></div>
                    <h4>Are you sure you want to delete this record?</h4>
                    <ul>
                        <li>If yes, click Delete to confirm.</li>
                    </ul>
                </div>
                <div class="modal-footer">
                    <div>
                        <button type="submit" id="btn-change-state" class="btn btn-lg btn-danger btn-rounded-corner" data-loading-text="loading..." tabindex="1">Delete</button>
                        <button type="button" class="btn btn-lg btn-default btn-rounded-corner" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- jQuery -->
<script type="text/javascript" src="<?= base_url('assets/scripts/jquery.min.js') ?>"></script>
<!-- Other JS libraries -->
<script type="text/javascript" src="<?= base_url('assets/tb/js/bootstrap.min.js') ?>"></script>
<script type="text/javascript" src="<?= base_url('assets/pace/themes/js/pace.min.js') ?>"></script>
<script type="text/javascript" src="<?= base_url('assets/datatables/js/jquery.dataTables.min.js'); ?>"></script>
<script type="text/javascript" src="<?= base_url('assets/datatables/js/dataTables.bootstrap.js'); ?>"></script>
<script type="text/javascript" src="<?= base_url('assets/icheck/js/icheck.min.js'); ?>"></script>

<script type="text/javascript">
    $(function () {
        // Public variables
        var baseURL = location.origin;
        var isProcessing = false;

        // GET: List of Person
        var personsList = {
            init: function () {
                this.createDataTables();
            },
            createDataTables: function () {
                var el = $('#datatables');
                var table = el.DataTable({
                    "processing": true,
                    "serverSide": true,
                    "ajax": {
                        "url": baseURL + "/admin/persons_data",
                        "type": "POST"
                    },
                    "columns": [
                        {
                            searchable: false,
                            data: null
                        },
                        {"data": "full_name"},
                        {
                            searchable: false,
                            data: "is_candidate",
                            mRender: function (data) {
                                return ((parseInt(data) === 1) ? '<span class="label label-success">yes</span>' : '<span class="label label-danger">no</span>');
                            }
                        },
                        {
                            searchable: false,
                            data: "is_validated",
                            mRender: function (data) {
                                return ((parseInt(data) === 1) ? '<span class="label label-success">yes</span>' : '<span class="label label-danger">no</span>');
                            }
                        },
                        {
                            searchable: false,
                            data: "is_voted",
                            mRender: function (data) {
                                return ((parseInt(data) === 1) ? '<span class="label label-success">yes</span>' : '<span class="label label-danger">no</span>');
                            }
                        },
                        {
                            searchable: false,
                            data: "id",
                            mRender: function (data) {
                                return '<a data-toggle="modal" data-param="' + data + '" href="#person-details"><i class="material-icons md-18">mode_edit</i></a>';
                            }
                        },
                        {
                            searchable: false,
                            data: "id",
                            mRender: function (data) {
                                return '<a data-toggle="modal" data-param="' + data + '" href="#delete-person"><i class="material-icons md-18">remove_circle_outline</i></a>';
                            }
                        }
                    ],
                    "lengthMenu": [[10, 25, 50, 75, 100, -1], [10, 25, 50, 75, 100, "All"]],
                    "order": [[1, "desc"]],
                    "columnDefs": [
                        {"orderable": false, "targets": [0, 5, 6]}
                    ],
                    "fnCreatedRow": function (row, data, index) {
                        $('td', row).eq(0).html(index + 1);
                    }
                });

                // Highlight table rows and columns
                el.find('tbody').on('mouseenter', 'td', function () {
                    var colIdx = table.cell(this).index().column;
                    $(table.cells().nodes()).removeClass('highlight');
                    $(table.column(colIdx).nodes()).addClass('highlight');
                });
            }
        };

        // GET: Person Details
        var personDetails = {
            init: function () {
                this.displayDetails();
            },
            emptyAjaxResponse: function () {
                $('#person-details').find('#ajax-response').empty();
            },
            resetForm: function () {
                var el = $('#person-details');
                el.find('form')[0].reset();
                el.find('.form-group').removeClass('has-error');
                el.find('label > div').removeClass('checked');
            },
            displayDetails: function () {
                $('#person-details').on('show.bs.modal', function (e) {

                    personDetails.emptyAjaxResponse();
                    personDetails.resetForm();

                    var el = $(this);
                    var id = $(e.relatedTarget).data('param');
                    var data = el.serialize();

                    $.ajax({
                        url: baseURL + '/admin/person_details/' + id,
                        type: 'GET',
                        dataType: 'json',
                        data: data,
                        cache: false,
                        processData: false,
                        beforeSend: function () {
                            el.find('#ajax-preloader').html('<p></p>').show();
                        },
                        complete: function () {
                            el.find('#ajax-preloader').html('<p></p>').hide('fast');
                        },
                        success: function (data) {
                            if (data) {
                                // Populate form
                                el.find('input:hidden[name="id"]').val(data.id);
                                el.find('input:hidden[name="qrcode"]').val(data.qrcode);
                                el.find('.access-code input').val(data.access_code);
                                el.find('.qrcode').html('<img src="' + data.qrcode + '" alt="QR Code"/>');
                                el.find('.prefix input').val(data.prefix);
                                el.find('.first-name input').val(data.first_name);
                                el.find('.middle-name input').val(data.middle_name);
                                el.find('.last-name input').val(data.last_name);
                                el.find('.suffix input').val(data.suffix);
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log('The following error occurred: ' + textStatus, errorThrown);
                        }
                    });
                });
            }
        };

        // POST: Add Person
        var addPerson = {
            init: function () {
                this.bindFunctions();
                this.submitForm();
            },
            bindFunctions: function () {
                $('#add-person').on('show.bs.modal', this.submitForm);
            },
            emptyAjaxResponse: function () {
                $('#add-person').find('#ajax-response').empty();
            },
            resetForm: function () {
                var el = $('#add-person');
                el.find('form')[0].reset();
                el.find('.form-group').removeClass('has-error');
                el.find('label > div').removeClass('checked');
            },
            submitForm: function () {
                addPerson.emptyAjaxResponse();
                addPerson.resetForm();

                //Prevent multiple ajax request
                if (isProcessing) return;
                isProcessing = true;

                $('#add-person-form').on('submit', function (e) {
                    var el = $(this);
                    var btn = el.find('#btn-change-state');
                    var data = el.serialize();
                    $.ajax({
                        url: baseURL + '/admin/add_person/',
                        type: 'POST',
                        dataType: 'json',
                        data: data,
                        cache: false,
                        processData: false,
                        beforeSend: function () {
                            el.find('#ajax-preloader').html('<p></p>').show();
                            btn.button('loading');
                        },
                        complete: function () {
                            el.find('#ajax-preloader').html('<p></p>').hide('fast');
                            btn.button('reset');
                        },
                        success: function (data) {
                            if (data.status === true) {
                                // Success msg response
                                el.find('#ajax-response').html(data.msg);
                                // Reset form
                                addPerson.resetForm();
                                // Reload datatables
                                $('#datatables').DataTable().ajax.reload(null, false); // user paging is not reset on reload
                            } else {
                                // Error msg response
                                el.find('#ajax-response').html(data.msg);
                                // Form error
                                (Boolean(data.first_name)) ? el.find('.first-name').addClass('has-error') : el.find('.first-name').removeClass('has-error');
                                (Boolean(data.last_name)) ? el.find('.last-name').addClass('has-error') : el.find('.last-name').removeClass('has-error');
                                (Boolean(data.gender)) ? el.find('.gender').addClass('has-error') : el.find('.gender').removeClass('has-error');
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log('The following error occurred: ' + textStatus, errorThrown);
                        }
                    });
                    e.preventDefault();
                });
            }
        };

        // POST: Update Person
        var updatePerson = {
            init: function () {
                this.submitForm();
            },
            submitForm: function () {
                $('form#update-person-form').on('submit', function (e) {

                    var el = $(this);
                    var btn = el.find('#btn-change-state');
                    var id = el.find('input:hidden').val();
                    var data = el.serialize();

                    $.ajax({
                        url: baseURL + '/admin/update_person/' + id,
                        type: 'POST',
                        dataType: 'json',
                        data: data,
                        cache: false,
                        processData: false,
                        beforeSend: function () {
                            el.find('#ajax-preloader').html('<p></p>').show();
                            btn.button('loading');
                        },
                        complete: function () {
                            el.find('#ajax-preloader').html('<p></p>').hide('fast');
                            btn.button('reset');
                        },
                        success: function (data) {
                            if (data.status === true) {
                                // Success msg response
                                el.find('#ajax-response').html(data.msg);
                                // Clear the form
                                el.find('.form-group').removeClass('has-error');
                                // Reload datatables
                                $('#datatables').DataTable().ajax.reload(null, false); // user paging is not reset on reload
                            } else {
                                // Error msg response
                                el.find('#ajax-response').html(data.msg);
                                // Form error
                                (Boolean(data.first_name)) ? el.find('.first-name').addClass('has-error') : el.find('.first-name').removeClass('has-error');
                                (Boolean(data.last_name)) ? el.find('.last-name').addClass('has-error') : el.find('.last-name').removeClass('has-error');
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log('The following error occurred: ' + textStatus, errorThrown);
                        }
                    });
                    e.preventDefault();
                });
            }
        };

        // POST: Delete Person
        var deletePerson = {
            init: function () {
                this.submitForm();
            },
            emptyAjaxResponse: function () {
                $('#delete-person').find('#ajax-response').empty();
            },
            submitForm: function () {
                $('#delete-person').on('show.bs.modal', function (e) {
                    var el = $(this);
                    // Reset button
                    var btn = el.find('#btn-change-state');
                    btn.removeAttr('disabled');
                    btn.button('reset');

                    deletePerson.emptyAjaxResponse();

                    var target = $(e.relatedTarget).data('param');
                    el.find('input:hidden').val(target);

                    $('form#delete-person-form').on('submit', function (e) {

                        var el = $(this);
                        var id = el.find('input:hidden').val();
                        var data = el.serialize();

                        $.ajax({
                            url: baseURL + '/admin/delete_person/' + id,
                            type: 'POST',
                            dataType: 'json',
                            data: data,
                            cache: false,
                            processData: false,
                            beforeSend: function () {
                                el.find('#ajax-preloader').html('<p></p>').show();
                                btn.button('loading');
                            },
                            complete: function () {
                                el.find('#ajax-preloader').html('<p></p>').hide('fast');
                                btn.attr('disabled');
                            },
                            success: function (data) {
                                if (data.status === true) {
                                    // Success msg response
                                    el.find('#ajax-response').html(data.msg);
                                    // Reload datatables
                                    $('#datatables').DataTable().ajax.reload(null, false); // user paging is not reset on reload
                                    // Auto hide modal
                                    setTimeout(function () {
                                        $('#delete-person').modal('hide');
                                    }, 900);
                                } else {
                                    // Error msg response
                                    el.find('#ajax-response').html(data.msg);
                                }
                            },
                            error: function (jqXHR, textStatus, errorThrown) {
                                console.log('The following error occurred: ' + textStatus, errorThrown);
                            }
                        });
                        e.preventDefault();
                    });
                });
            }
        };

        // GET: Dropdown list
        var dropDownList = {
            init: function () {
                this.displayPositionList();
                this.displayGroupList();
            },
            displayPositionList: function () {
                var el = $('.position');
                var data = el.serialize();
                var jqxhr = $.ajax({
                    url: baseURL + '/admin/ddl_position',
                    type: 'GET',
                    dataType: 'json',
                    data: data,
                    cache: false,
                    processData: false
                });
                jqxhr.done(function (data) {
                    if (data) {
                        $.each(data.position, function (key, value) {
                            el.find('#position').append('<option value="' + value.id + '" data-code="' + value.id + '">' + value.position_name + '</option>');
                        });
                    }
                });
                jqxhr.fail(function (jqXHR, textStatus, errorThrown) {
                    console.log('The following error occurred: ' + textStatus, errorThrown);
                });
            },
            displayGroupList: function () {
                var el = $('.group');
                var data = el.serialize();
                var jqxhr = $.ajax({
                    url: baseURL + '/admin/ddl_group',
                    type: 'GET',
                    dataType: 'json',
                    data: data,
                    cache: false,
                    processData: false
                });
                jqxhr.done(function (data) {
                    if (data) {
                        $.each(data.group, function (key, value) {
                            el.find('#group').append('<option value="' + value.id + '">' + value.group_name + '</option>');
                        });
                    }
                });
                jqxhr.fail(function (jqXHR, textStatus, errorThrown) {
                    console.log('The following error occurred: ' + textStatus, errorThrown);
                });
            }
        };

        // Other Methods
        var otherMethods = {
            init: function () {
                this.activeList();
                this.reloadTable();
                this.navbarAffix();
                this.customCheckbox();
            },
            activeList: function () {
                var str = location.href.toLowerCase();
                $(".navbar-nav li a").each(function () {
                    if (str.indexOf(this.href.toLowerCase()) > -1) {
                        $(".navbar-nav li.active").removeClass("active");
                        $(this).parent().addClass("active");
                    }
                });
                $(".navbar-nav li.active").parents().each(function () {
                    if ($(this).is("li")) {
                        $(this).addClass("active");
                    }
                });
            },
            reloadTable: function () {
                $('#reload').on('click', function (e) {
                    $('#datatables').DataTable().ajax.reload(null, true); // user paging will reset on reload
                    e.preventDefault();
                })
            },
            navbarAffix: function () {
                $('.navbar-affix').affix({
                    offset: {
                        top: 50
                    }
                });
            },
            customCheckbox: function () {
                $('input').iCheck({
                    labelHover: false,
                    cursor: true,
                    checkboxClass: 'iradio_square-green',
                    radioClass: 'iradio_square-green',
                    increaseArea: '20%'
                });
            },
        };

        personsList.init();
        personDetails.init();
        addPerson.init();
        updatePerson.init();
        deletePerson.init();
        dropDownList.init();
        otherMethods.init();
    });
</script>

</body>
</html>