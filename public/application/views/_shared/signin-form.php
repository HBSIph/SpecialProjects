<div id="signin">
    <div class="container-fluid">
        <div class="row">
            <div class="logo col-md-offset-4 col-md-4 col-lg-offset-4 col-lg-4 wow bounceInDown">
                <p class="text-center">
                    <a href="<?= base_url() ?>" title="Logo"><img src="<?= base_url('assets/images/nu-ns-logo.png') ?>" alt="Logo"/></a>
                </p>
            </div>
            <div class="signin col-md-offset-4 col-md-4 col-lg-offset-4 col-lg-4">
                <h2 class="text-center"><?= $page_title ?></h2>
                <hr/>
                <form id="sign-form">
                    <div id="custom-ajax-preloader"></div>
                    <div id="ajax-response"></div>
                    <div class="well">
                        <div class="form-group password">
                            <label class="control-label" for="password">ACCESS CODE<span class="important">* 5 digits system generated access code</span></label>
                            <input type="password" id="password" class="form-control input-lg" name="password" maxlength="5" value="<?= set_value('password') ?>" placeholder="&bullet;&bullet;&bullet;&bullet;&bullet;" tabindex="2">
                        </div>
                    </div>
                    <button type="submit" id="btn-change-state" class="btn btn-primary btn-lg btn-block btn-rounded-corner" data-loading-text="loading..." tabindex="3">Login</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- jQuery -->
<script type="text/javascript" src="<?= base_url('assets/scripts/jquery.min.js') ?>"></script>
<!-- Other JS libraries -->
<script type="text/javascript" src="<?= base_url('assets/tb/js/bootstrap.min.js') ?>"></script>
<script type="text/javascript" src="<?= base_url('assets/tb/js/bootstrap-show-password.min.js') ?>"></script>
<script type="text/javascript" src="<?= base_url('assets/pace/themes/js/pace.min.js') ?>"></script>
<script type="text/javascript" src="<?= base_url('assets/animate/js/wow.min.js') ?>"></script>

<script type="text/javascript">
    $(function () {
        var baseURL = location.origin;

        // POST: Signin
        var signIn = {
            init: function () {
                this.submitForm();
            },
            resetForm: function () {
                var _this = $('#sign-form');
                _this.find('.form-group').removeClass('has-error');
                _this.find('#ajax-response').empty();
            },
            submitForm: function () {
                $('form#sign-form').on('submit', function (e) {

                    var _this = $(this);
                    var btn = _this.find('#btn-change-state');
                    var data = _this.serialize();

                    $.ajax({
                        url: baseURL + '/auth/signin_ajax',
                        type: 'POST',
                        dataType: 'json',
                        data: data,
                        cache: false,
                        processData: false,
                        beforeSend: function () {
                            _this.find('#custom-ajax-preloader').html('<p></p>').show();
                            btn.button('loading');
                        },
                        complete: function () {
                            _this.find('#custom-ajax-preloader').html('<p></p>').hide('fast');
                            btn.button('reset');
                        },
                        success: function (data) {
                            if (data.status === true) {
                                // Reset form
                                signIn.resetForm();
                                // Redirect to dashboard
                                window.location.replace(baseURL + '/auth');
                            } else {
                                // Error msg response
                                _this.find('#ajax-response').html(data.msg);
                                (Boolean(data.password)) ? _this.find('.password').addClass('has-error') : _this.find('.password').removeClass('has-error');
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            // For debugging
                            console.log('The following error occurred: ' + textStatus, errorThrown);
                        }
                    });
                    e.preventDefault();
                });
            }
        };

        // Other methods
        var otherMethods = {
            init: function () {
                this.wowAnimate();
                this.showPassword();
                this.disableContextMenu();
            },
            wowAnimate: function () {
                new WOW().init();
            },
            showPassword: function () {
                $("#password").password({
                    eyeClass: 'fa',
                    eyeOpenClass: 'fa-eye',
                    eyeCloseClass: 'fa-eye-slash'
                });
            },
            disableContextMenu: function () {
                var _this = $('body');
                // Disable context menu (right click menu)
                _this.bind("contextmenu", function (e) {
                    e.preventDefault();
                });
                // Disable highlighting
                _this.bind("selectstart", function (e) {
                    e.preventDefault();
                });
            }
        };

        signIn.init();
        otherMethods.init();
    });
</script>

</body>
</html>