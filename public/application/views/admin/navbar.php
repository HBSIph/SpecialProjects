<div class="navbar-affix" data-spy="affix">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar top-bar"></span>
                    <span class="icon-bar middle-bar"></span>
                    <span class="icon-bar bottom-bar"></span>
                </button>
                <a class="navbar-brand" href="<?= base_url() ?>"><img src="<?=base_url('assets/images/hbsi-brand-logo.png')?>" alt=""></a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="<?= base_url('admin/persons') ?>">Persons</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="javascript:void(0)" id="placeholder" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="false">
                            <?= substr_username(user('id')); ?><span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li class="dropdown-header">Manage</li>
                            <li><a href="javascript:void(0)">My Account</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="<?= base_url('auth/signout') ?>">Sign out</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>