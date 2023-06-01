<!DOCTYPE html>
<html>
<head>
    <base href="/">
    <link rel="shortcut icon" href="<?= PATH ?>/images/star.png" type="image/png" />
    <?=$this->getMeta();?>
    <link rel="stylesheet" href="<?= PATH ?>/css/fontawesome-free/css/all.min.css">
    <link href="<?= PATH ?>/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="<?= PATH ?>/megamenu/css/ionicons.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="<?= PATH ?>/megamenu/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="<?= PATH ?>/css/flexslider.css" type="text/css" media="screen" />
    <!--theme-style-->
    <link href="<?= PATH ?>/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<!--top-header-->
    <div class="top-header">
        <div class="container">
            <div class="top-header-main">            
                    
                <div class="drop d-flex justify-content-between  align-content-center ">
                        <!-- <div class="box">
                            <select id="currency" tabindex="4" class="dropdown drop">
                                <?php new \app\widgets\currency\Currency(); ?>
                            </select>
                        </div> -->    
                    <div class="col-md-3">
                        <!-- logo-->
                        <div class="logo">
                            <a href="<?=PATH?>">
                            <img src="<?=PATH?>/images/logo.jpg" alt="" class="logo-img">
                        
                        </a>
                        </div>
                    </div>
                    <div class="box col-md-4 d-flex justify-content-center align-items-center">      
                    
                        <li class="dropdown-item"> <a  href="<?=PATH?>">Меню</a></li>
                         
                        <li class="dropdown-item"> <a  href="<?=PATH?>/about">О нас</a></li>
                        <li class="dropdown-item"> <a  href="<?=PATH?>/contacts">Контакты</a></li>            
                        
                    </div>               
                    <div class="col-md-3 text-right d-flex justify-content-center align-items-center">
                            <svg class="phone-svg" style="enable-background:new -25 14 14 14;" version="1.1" viewBox="-25 14 14 14" x="0px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" y="0px"><g> <path d="M-14.4,28c-1.5,0-3.4-0.7-6.1-2.8c-2.3-1.8-4.9-4.7-4.4-8c0.1-1,0.8-2.6,2-3.1c0.2-0.1,0.4-0.1,0.5,0 c0.5,0.1,0.9,0.4,1.2,0.6c0.4,0.3,0.8,0.7,1.1,1l0.1,0.1c0.2,0.2,0.5,0.5,0.7,0.8c0.6,1,0.1,1.7-0.2,2.3c-0.1,0.2-0.4,0.6-0.7,0.8 c0.2,0.3,0.5,0.7,0.6,0.9c0.3,0.4,0.6,0.8,1,1.2c0.3,0.3,0.8,0.7,1.2,1c0.2,0.1,0.7,0.4,1,0.6l0.3-0.3c0.1-0.1,0.1-0.1,0.2-0.2 c0.3-0.3,0.7-0.8,1.3-0.8c0.6,0,1.2,0.4,1.8,1c0.1,0.1,0.2,0.2,0.3,0.2c0.6,0.4,1.4,1.1,1.5,2.1c0,0.5-0.2,1-0.7,1.6 C-12.3,27.5-13.2,28-14.4,28z M-22.6,15C-22.6,15-22.6,15-22.6,15c-0.7,0.3-1.2,1.4-1.4,2.3c-0.4,2.9,2,5.4,4.1,7.1 c3.5,2.7,6,3.3,7.4,1.7c0.4-0.5,0.5-0.7,0.5-0.9c0-0.5-0.6-1-1.1-1.3c-0.1-0.1-0.2-0.2-0.3-0.3c-0.3-0.2-0.9-0.8-1.2-0.8 c0,0,0,0,0,0c-0.2,0-0.4,0.2-0.5,0.4c-0.1,0.1-0.2,0.2-0.2,0.3l-0.5,0.5c-0.2,0.2-0.4,0.4-2-0.7c-0.5-0.3-1-0.7-1.4-1.1 c-0.4-0.4-0.8-0.8-1.1-1.3c-1.1-1.5-0.9-1.7-0.7-1.9c0.3-0.3,0.7-0.7,0.8-0.9c0.4-0.6,0.5-0.8,0.2-1.2c-0.1-0.2-0.3-0.4-0.5-0.6 l-0.1-0.1c-0.3-0.3-0.6-0.6-1-0.9C-22,15.3-22.3,15-22.6,15L-22.6,15C-22.6,15-22.6,15-22.6,15z"></path></g></svg> 
                            <a  href="#" class="white-space">+7 (846) 989 09 92</a> 
                        </div> 
                        <div class="col-md-1 cart   d-flex justify-content-start align-items-center">
                            <a href="<?=PATH?>/cart/show" onclick="getCart(); return false;" data-toggle="cart" >
                            <div class="total">
                                <img src="<?= PATH ?>/images/cart-2.png" alt="" />  
                                <!-- <svg class="head-svg-wrap" style="width:16px;height:20px;enable-background:new 0 0 14.6 18;" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Layer_1" x="0px" y="0px" viewBox="0 0 14.6 18" xml:space="preserve">
                                                <path class="head-svg" d="M13.1,4.8h-1.7V2c0-1.1-0.9-2-2-2H5.2c-1.1,0-2,0.9-2,2v2.7H1.5C0.7,4.8,0,5.4,0,6.3v10.2C0,17.3,0.7,18,1.5,18 h11.6c0.8,0,1.5-0.7,1.5-1.5V6.3C14.6,5.4,14,4.8,13.1,4.8z M4.2,2c0-0.6,0.5-1,1-1h4.2c0.6,0,1,0.5,1,1v2.7H4.2V2z M13.6,16.5 c0,0.3-0.2,0.5-0.5,0.5H1.5C1.2,17,1,16.8,1,16.5V6.3C1,6,1.2,5.8,1.5,5.8h11.6c0.3,0,0.5,0.2,0.5,0.5V16.5z"/>
                                            </svg> -->
                                <?php if(!empty($_SESSION['cart'])): ?>
                                    <span class="simpleCart_total">
                                        <!-- <?=$_SESSION['cart.currency']['symbol_left'].$_SESSION['cart.sum'].$_SESSION['cart.currency']['symbol_right'];?> -->
                                        <?=$_SESSION['cart.qty'];?>
                                </span>
                                <?php else: ?>
                                    <span class="simpleCart_total">0</span>
                                <?php endif; ?>
                            </div>
                            </a>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="box col-md-1 d-flex justify-content-center align-items-center">
                                <a class="dropdown-toggle" data-toggle="dropdown" id="navbarDropdown2">
                                    <!-- Account  -->
                                    <?php if(!empty($_SESSION['user'])): ?>
                                        <?=h($_SESSION['user']['name']);?>
                                    <!-- <span class="caret"></span> -->
                                    <?php else: ?>
                                        <span class="white-space">Войти
                                            <!-- <span class="caret"></span> -->
                                        </span>
                                    <?php endif; ?>
                                </a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown2">
                                        <?php if(!empty($_SESSION['user'])): ?>
                                            <!-- <li>
                                                <a href="#">Добро пожаловать, 
                                                    <?=h($_SESSION['user']['name']);?>
                                            </a>
                                            </li> -->

                                            <li><a href="<?=PATH?>/user/logout">Выход</a></li>
                                        <?php else: ?>
                                            <li><a href="<?=PATH?>/user/login">Вход</a></li>
                                            <li><a href="<?=PATH?>/user/signup">Регистрация</a></li>
                                        <?php endif; ?>
                                    </ul>
                        </div>
                        
                      

                    </div>
                    <div class="clearfix"></div>
                
            </div>          
            <div class="clearfix"></div>
        </div>
    </div>
<!--banner-starts-->  
<?php  $this->getPart('slider');  ?>
<!--banner-ends-->
<!--header-middle-->
<div class="header-middle">
    <div class="container">
        <div class="header-middle--inner">
            <div class="d-flex align-items-center justify-content-center">
            
                <div class=" header-menu">
                 
                    <div class="menu">
                        <?php new \app\widgets\menu\Menu([
                            'tpl' => WWW.'/menu/menu.php',
                        ]); ?>
                    </div>
             
                     <div class="clearfix"> </div>
                </div>          


            </div>  
        </div>
    </div> 
</div>
<!--/header-middle-->
<div class="content">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <?php if(isset($_SESSION['error'])): ?>
                    <div class="alert alert-danger">
                        <?php echo $_SESSION['error']; unset($_SESSION['error']); ?>
                    </div>
                <?php endif; ?>
                <?php if(isset($_SESSION['success'])): ?>
                    <div class="alert alert-success">
                        <?php echo $_SESSION['success']; unset($_SESSION['success']); ?>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
    <?=$content;?>
</div>

<!--information-starts-->
<div class="information footer">
    <div class="container">
        <div class="infor-top">
            <div class="col-md-3 infor-left">
                <h3 class="logoh1 d-block">
                    <span class="cl-gold">Восточный</span>
                    <span class="logowatch">пекарь</span>
                </h3>
                <br>  <br> <br>              
                <ul class="d-flex align-items-top">                
                    <li><a href="#"><span class="fb"></span> </a></li>
                    <li><a href="#"><span class="twit"></span> </a></li>
                    <li><a href="#"><span class="google"></span> </a></li>
                </ul>
            </div> 
            <div class="col-md-6 infor-left">
               
               <ul>
               <!-- <li><a href="#"><p>г. Ростов-на-Дону, ул. Согласия, 35</p></a></li>  -->
               <li><a href="#"><p class="big1000"> +7 (863) 245-45-84</p></a></li>
               <li><a href="mailto:example@email.com"><p>contact@recarmail.com</p></a></li>
               <li><a href="#"><p>Пн-Вс, с 9.00 до 21.00</p></a>
               </li></ul>
           </div>          
            <div class="col-md-3 infor-left">
                 
                <ul>
                    <li><a href="account.html"><p>Каталог</p></a></li>
                    <li><a href="#"><p>Оплата</p></a></li>
                    <li><a href="#"><p>О компании</p></a></li>
                    <li><a href="#"><p>Контакты</p></a></li>                       
                </ul>
            </div>
         
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--information-end-->
<!--footer-starts-->
<div class="footer">
    <div class="container">
        <div class="footer-top">
           
            <div class="col-md-12 ">
                <p>2023г ©Интерент-магазин "Восточный пекарь". 
</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--footer-end-->

<!-- Modal -->
<div class="modal  fade" id="cart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <!--   show-->
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Корзина</h4>
            </div>
            <div class="modal-body">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Вернуться к покупкам</button>
                <a href="<?=PATH?>/cart/view" type="button" class="btn btn-primary">Оформить заказ</a>
                <button type="button" class="btn btn-danger" onclick="clearCart()">Очистить корзину</button>
            </div>
        </div>
    </div>
</div>

<div class="preloader"><img src="<?= PATH ?>/images/ring.svg" alt=""></div>

<?php $curr = \ishop\App::$app->getProperty('currency'); ?>
<script>
    var path = '<?=PATH;?>',
        course = <?=$curr['value'];?>,
        symboleLeft = '<?=$curr['symbol_left'];?>',
        symboleRight = '<?=$curr['symbol_right'];?>';
</script>
 

<script defer src="https://use.fontawesome.com/releases/v5.6.3/js/all.js" integrity="sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1" crossorigin="anonymous"></script>
<script src="<?= PATH ?>/js/jquery-1.11.0.min.js"></script>
<script src="<?= PATH ?>/js/bootstrap.min.js"></script>

<script src="<?= PATH ?>/js/validator.js"></script>
<script src="<?= PATH ?>/js/typeahead.bundle.js"></script>
<!--dropdown-->
<script src="<?= PATH ?>/js/jquery.easydropdown.js"></script>
<!--Slider-Starts-Here-->
<script src="<?= PATH ?>/js/responsiveslides.min.js"></script>
<script>
    // You can also use "$(window).load(function() {"
    $(function () {
        // Slideshow 4
        $("#slider4").responsiveSlides({
            auto: false,
            pager: true,
            nav: true,
            speed: 500,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });

    });
</script>
<script src="<?= PATH ?>/megamenu/js/megamenu.js"></script>
<script src="<?= PATH ?>/js/imagezoom.js"></script>
<script defer src="<?= PATH ?>/js/jquery.flexslider.js"></script>

<script>
    // Can also be used with $(document).ready()
    $(window).load(function() {
        $('.flexslider').flexslider({
            animation: "slide",
            controlNav: "thumbnails"
        });
    });
</script>
<script src="<?= PATH ?>/js/jquery.easydropdown.js"></script>
<script type="text/javascript">
    $(function() {

        var menu_ul = $('.menu_drop > li > ul'),
            menu_a  = $('.menu_drop > li > a');

        menu_ul.hide();

        menu_a.click(function(e) {
            e.preventDefault();
            if(!$(this).hasClass('active')) {
                menu_a.removeClass('active');
                menu_ul.filter(':visible').slideUp('normal');
                $(this).addClass('active').next().stop(true,true).slideDown('normal');
            } else {
                $(this).removeClass('active');
                $(this).next().stop(true,true).slideUp('normal');
            }
        });

    });
</script>
 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>



<script src="<?= PATH ?>/js/main.js"></script>
<!--End-slider-script-->

<!-- <?php
$logs = \R::getDatabaseAdapter()
    ->getDatabase()
    ->getLogger();

debug( $logs->grep( 'SELECT' ) );
?> -->
</body>
</html>