<!DOCTYPE html>
<html>

<head>
    <title>Flat Admin V.2 - Free Bootstrap Admin Templates</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    <!-- CSS Libs -->
    <link rel="stylesheet" type="text/css" href="../../assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/bootstrap-switch.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/checkbox3.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/dataTables.bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../../assets/css/select2.min.css">
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="../../css/themes/style.css">
    <link rel="stylesheet" type="text/css" href="../../css/themes/flat-blue.css">
</head>

<body class="flat-blue">
    <div class="app-container">
        <!-- Main Content -->
        <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">Pricing Table</span>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">Pricing Table Example</div>
                                    </div>
                                    <div class="pull-right card-action">
                                        <div class="btn-group" role="group" aria-label="...">
                                            <button type="button" class="btn btn-link" data-toggle="modal" data-target="#modalCardProfileExample"><i class="fa fa-code"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row no-margin no-gap">
                                        <div class="col-sm-3">
                                            <div class="pricing-table green">
                                                <div class="pt-header">
                                                    <div class="plan-pricing">
                                                        <div class="pricing">$10</div>
                                                        <div class="pricing-type">per month</div>
                                                    </div>
                                                </div>
                                                <div class="pt-body">
                                                    <h4>Basic Plan</h4>
                                                    <ul class="plan-detail">
                                                        <li>1 Website</li>
                                                        <li>100 GB Storage</li>
                                                        <li>Unlimited Bandwidth</li>
                                                    </ul>
                                                </div>
                                                <div class="pt-footer">
                                                    <button type="button" class="btn btn-success">Buy Now</button>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-3">
                                            <div class="pricing-table blue">
                                                <div class="pt-header">
                                                    <div class="plan-pricing">
                                                        <div class="pricing">$25</div>
                                                        <div class="pricing-type">per month</div>
                                                    </div>
                                                </div>
                                                <div class="pt-body">
                                                    <h4>Standard Plan</h4>
                                                    <ul class="plan-detail">
                                                        <li>5 Website</li>
                                                        <li>500 GB Storage</li>
                                                        <li>Unlimited Bandwidth</li>
                                                    </ul>
                                                </div>
                                                <div class="pt-footer">
                                                    <button type="button" class="btn btn-info">Buy Now</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="pricing-table yellow">
                                                <div class="pt-header">
                                                    <div class="plan-pricing">
                                                        <div class="pricing">$50</div>
                                                        <div class="pricing-type">per month</div>
                                                    </div>
                                                </div>
                                                <div class="pt-body">
                                                    <h4>Advanced Plan</h4>
                                                    <ul class="plan-detail">
                                                        <li>10 Website</li>
                                                        <li>1 TB Storage</li>
                                                        <li>Unlimited Bandwidth</li>
                                                    </ul>
                                                </div>
                                                <div class="pt-footer">
                                                    <button type="button" class="btn btn-warning">Buy Now</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="pricing-table red">
                                                <div class="pt-header">
                                                    <div class="plan-pricing">
                                                        <div class="pricing">$100</div>
                                                        <div class="pricing-type">per month</div>
                                                    </div>
                                                </div>
                                                <div class="pt-body">
                                                    <h4>Unlimited Plan</h4>
                                                    <ul class="plan-detail">
                                                        <li>Unlimited Website</li>
                                                        <li>Unlimited Storage</li>
                                                        <li>Unlimited Bandwidth</li>
                                                    </ul>
                                                </div>
                                                <div class="pt-footer">
                                                    <button type="button" class="btn btn-danger">Buy Now</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>

        <div>
            <div class="row">
                <div class="col-sm-6 col-xs-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="card-title">
                                <div class="title">Line Chart</div>
                            </div>
                        </div>
                        <div class="card-body no-padding">
                            <canvas id="line-chart" class="chart"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xs-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="card-title">
                                <div class="title">Bar Chart</div>
                            </div>
                        </div>
                        <div class="card-body no-padding">
                            <canvas id="bar-chart" class="chart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-xs-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="card-title">
                                <div class="title">Radar Chart</div>
                            </div>
                        </div>
                        <div class="card-body no-padding">
                            <canvas id="radar-chart" class="chart"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xs-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="card-title">
                                <div class="title">Polar Area Chart</div>
                            </div>
                        </div>
                        <div class="card-body no-padding">
                            <canvas id="polar-area-chart" class="chart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>

    </div>

    </div>


    <!-- Javascript Libs -->
    <script type="text/javascript" src="../../js/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="../../assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../assets/js/plugins/chartJs/Chart.min.js"></script>
    <script type="text/javascript" src="../../assets/js/bootstrap-switch.min.js"></script>

    <script type="text/javascript" src="../../assets/js/jquery.matchHeight-min.js"></script>
    <script type="text/javascript" src="../../assets/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="../../assets/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="../../assets/js/select2.full.min.js"></script>
    <script type="text/javascript" src="../../assets/js/ace/ace.js"></script>
    <script type="text/javascript" src="../../assets/js/ace/mode-html.js"></script>
    <script type="text/javascript" src="../../assets/js/ace/theme-github.js"></script>
    <!-- Javascript -->
    <script type="text/javascript" src="../../assets/js/app.js"></script>
    <script type="text/javascript" src="../../assets/js/chartjs.js"></script>
</body>

</html>
