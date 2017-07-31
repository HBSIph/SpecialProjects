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
                    <h6><?= $page_title ?></h6>
                    <h2><?= $page_header ?></h2>
                    <hr/>
                </div>
            </div>
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

<script type="text/javascript">
    $(function () {
        // Active link
        var active_list = function () {
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
        };

        // Affix
        var navbar_affix = function () {
            $('.navbar-affix').affix({
                offset: {
                    top: 50
                }
            });
        };

        active_list();
        navbar_affix();
    });
</script>

</body>
</html>