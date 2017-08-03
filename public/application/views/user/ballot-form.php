<!-- Header / Site Info -->
<div id="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-xs-12">
                <div class="row">
                    <div class="jumbotron">
                        <h1>Nazareth School of National University</h1>
                        <p>JHS Student Council Election</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Ballot form -->
<div id="ballot-form">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-xs-12">
                <div class="row">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>Official Ballot<br/>
                                <small>To make your selection, select the button to the left of the option.</small>
                            </h4>
                        </div>
                        <div class="panel-body">
                            <?= form_open('user/submit_form') ?>
                            <div class="col-lg-12 col-md-12 col-xs-12">
                                <?php if (position()): ?>
                                    <div class="row">
                                        <?php foreach (position() as $p): ?>
                                            <div id="position" class="col-lg-12 col-md-12 col-xs-12">
                                                <h3 class="position-header"><?= $p->position_name ?>
                                                    <small>&mdash; Vote for <?= convert_number_to_words($p->max_selection) ?> (<?= $p->max_selection ?>)
                                                    </small>
                                                </h3>
                                                <hr/>
                                            </div>
                                            <div id="candidate" class="col-lg-12 col-md-12 col-xs-12">
                                                <?php if (candidate($p->id)): ?>
                                                    <div class="row">
                                                        <?php foreach (candidate($p->id) as $c): ?>
                                                            <div class="col-lg-6 col-md-6 col-xs-12">
                                                                <div class="checkbox <?= $p->id . '_' . $p->max_selection ?>">
                                                                    <input id="<?= $p->id . '_' . $p->max_selection ?>" data-type="max" type="hidden" value="<?= $p->max_selection ?>">
                                                                    <input type="checkbox" id="candidate(<?= $c->id ?>)" name="candidate_id[]" value="<?= $c->id ?>" <?= set_checkbox('candidate_id', $c->id) ?> />
                                                                    <label for="candidate(<?= $c->id ?>)">
                                                                        <span class="fullname"><?= $c->first_name . nbs() . $c->last_name . nbs() . $c->suffix ?></span><br/>
                                                                        <small class="group"><?= $c->group_name ?></small>
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        <?php endforeach; ?>
                                                    </div>
                                                <?php else: ?>
                                                    <div class="alert alert-danger">No records found.</div>
                                                <?php endif; ?>
                                            </div>
                                        <?php endforeach; ?>
                                    </div>
                                <?php else: ?>
                                    <p class="alert alert-danger">No records found.</p>
                                <?php endif; ?>
                            </div>
                            <!-- Submit Button -->
                            <div class="col-lg-12 col-md-12 col-xs-12">
                                <a class="btn btn-primary btn-lg btn-rounded-corner center-block btn-enable-disable" disabled data-toggle="modal">Continue</a>
                            </div>
                            <?= form_close() ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Confirmation Modal -->
<div class="modal fade" id="confirmation" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><i class="material-icons">clear</i></span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Confirmation</h4>
            </div>
            <?= form_open() ?>
            <div class="modal-body">
                <h4>Confirm your selections</h4>
                <hr/>
                <ul>
                    <li>If correct, click Submit Ballot to cast your votes.</li>
                    <li>To alter your selections, click Return to Ballot.</li>
                </ul>
            </div>
            <div class="modal-footer">
                <div>
                    <button type="button" id="confirm" class="btn btn-lg btn-primary btn-rounded-corner" tabindex="1">Submit Ballot</button>
                    <button type="button" class="btn btn-lg btn-default btn-rounded-corner" data-dismiss="modal">Return to Ballot</button>
                </div>
            </div>
            <?= form_close() ?>
        </div>
    </div>
</div>

<!-- jQuery -->
<script type="text/javascript" src="<?= base_url('assets/scripts/jquery.min.js') ?>"></script>
<!-- Other JS libraries -->
<script type="text/javascript" src="<?= base_url('assets/tb/js/bootstrap.min.js') ?>"></script>
<script type="text/javascript" src="<?= base_url('assets/pace/themes/js/pace.min.js') ?>"></script>

<script type="text/javascript">
    $(function () {
        var baseURL = location.origin;
        //var isProcessing = false;

        // POST: Add Tally
        var addTally = {
            init: function () {
                this.submitForm();
            },
            submitForm: function () {
                //Prevent multiple ajax request
                //if (isProcessing) return;
                //isProcessing = true;

                $('#ballot-form').on('submit', function (e) {
                    var el = $(this);
                    var btn = el.find('#btn-change-state');
                    var data = el.serialize();
                    $.ajax({
                        url: baseURL + '/user/submit_form/',
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
                                console.log(data.msg);
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

        // Limit number of checkbox selected
        var checkboxLimit = {
            init: function () {
                var data = [];
                $('input[data-type="max"]').each(function () {
                    data.push({
                        id: $(this).attr("id"),
                        value: $(this).attr("value")
                    });
                });
                $.each(data, function () {
                    var pos = this.id;
                    var max = this.value;
                    var checkboxes = $('.' + pos + ' ' + 'input:checkbox');
                    checkboxes.change(function () {
                        var current = checkboxes.filter(':checked').length;
                        checkboxes.filter(':not(:checked)').prop('disabled', current >= max);
                    });
                });
            }
        };

        // Confirmation dialog
        var confirmationDialog = {
            init: function () {
                var el = $('#confirmation');
                el.on('show.bs.modal', function (e) {
                    var form = $(e.relatedTarget).closest('form');
                    $(this).find('.modal-footer #confirm').data('form', form);
                });
                el.find('.modal-footer #confirm').on('click', function () {
                    $(this).data('form').submit();
                    //addTally.init();
                });
            }
        };

        // Other Methods
        var otherMethods = {
            init: function () {
                this.disableContextMenu();
                this.disableHighlighting();
                this.buttonToggle();
            },
            disableContextMenu: function () {
                $(this).bind("contextmenu", function (e) {
                    e.preventDefault();
                });
            },
            disableHighlighting: function () {
                $(this).bind("selectstart", function (e) {
                    e.preventDefault();
                });
            },
            buttonToggle: function () {
                $('input:checkbox').on('click', function () {
                    if ($(this).is(':checked')) {
                        $('.btn-enable-disable').removeAttr('disabled').attr('href', '#confirmation');
                    }
                    else {
                        $('.btn-enable-disable').attr('disabled', true).removeAttr('href');
                    }
                })
            }
        };

        checkboxLimit.init();
        confirmationDialog.init();
        otherMethods.init();
    });
</script>