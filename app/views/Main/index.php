<!--about-starts-->
<?php if($brands): ?>
<div class="about">
    <div class="container">
    
        <div class="about-top grid-1">
            <?php foreach($brands as $brand): ?>
                <div class="col-md-4 about-left brand-gal">
                <figure class="effect-bubba">
                    <img class="img-responsive" style="width: 370px; height: 500px; object-fit:cover;object-position: 50% 50%;"  src="<?= PATH ?>/images/<?=$brand->img;?>" alt=""/>
                    <figcaption>
                        <h2><?=$brand->title;?></h2>
                        <p><?=$brand->description;?></p>
                    </figcaption>
                </figure>
            </div>
            <?php endforeach; ?>
            <div class="brand-text">
            <h2>Домашняя выпечка по семейным рецептам </h2>
                <p>
                <span>Хорошee настроение — залог удачной рабочей недели!</span> А вкуснейшие восточные сладости Вы всегда можете приобрести у нас!  
                </p>
                <p>Наша   кондитерская   производит домашнюю выпечку по семейным рецептам. Мы рады стараться, чтобы вы всегда могли насладиться свежими изделиями. 
                    <!-- Ароматный свежеиспеченный домашний хлеб с золотистой хрустящей корочкой и нежным мякишем. -->
                </p>
                
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<?php endif; ?>
<!--about-end-->


<!--product-starts-->
<?php if($hits):  ?>
<?php $curr = \ishop\App::$app->getProperty('currency'); ?>
<div class="product">
    <div class="container">
        <h2>Сытная выпечка 
  </h2>
        <div class="product-top">
            <div class="product-one">
            <?php foreach($hits as $hit): ?>
                <div class="col-md-3 product-left">
                    <div class="product-main simpleCart_shelfItem">

                        <a href="<?=PATH?>/product/<?=$hit->alias;?>" class="mask"><img class="img-responsive zoom-img"   src="<?= PATH ?>/images/<?=$hit->img;?>" alt="" /></a>
                        <div class="product-bottom">
                            <h3><a href="<?=PATH?>/product/<?=$hit->alias;?>"><?=$hit->title;?></a></h3>
                            <!-- <p>Explore Now</p> -->
                            <h4>                               
                                
                                <span class=" item_price"><?=$curr['symbol_left'];?><?=$hit->price * $curr['value'];?><?=$curr['symbol_right'];?></span>

                            <?php if($hit->old_price): ?>
                                <small><del><?=$curr['symbol_left'];?><?=$hit->old_price * $curr['value'];?><?=$curr['symbol_right'];?></del></small>
                            <?php endif; ?>
                            </h4>
                            <a data-id="<?=$hit->id;?>" class="add-to-cart-link"  href="<?=PATH?>/cart/add?id=<?=$hit->id;?>">
                            <!-- <i></i> --> Добавить в заказ
                        </a> 
                        </div>
                        <div class="srch">
                            <!-- <span>-10%</span> -->
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<?php endif; ?>
<!--product-end-->

<!--sale product-starts-->
<?php if($sale):  ?>
<?php $curr = \ishop\App::$app->getProperty('currency'); ?>
<div class="product">
    <div class="container">
        <h2>Десерты и сладости </h2>
        <div class="product-top">
            <div class="product-one">
            <?php foreach($sale as $sal): ?>
                <div class="col-md-3 product-left">
                    <div class="product-main simpleCart_shelfItem">
                        <a href="<?=PATH?>/product/<?=$sal->alias;?>" class="mask"><img class="img-responsive zoom-img "   src="<?= PATH ?>/images/<?=$sal->img;?>" alt="" /></a>
                        <div class="product-bottom">
                            <h3><a href="<?=PATH?>/product/<?=$sal->alias;?>"><?=$sal->title;?></a></h3>
                            <!-- <p>Explore Now</p> -->
                            <h4>
                                <span class=" item_price"><?=$curr['symbol_left'];?><?=$sal->price * $curr['value'];?><?=$curr['symbol_right'];?></span>
                            <?php if($sal->old_price): ?>
                                <small><del><?=$curr['symbol_left'];?><?=$sal->old_price * $curr['value'];?><?=$curr['symbol_right'];?></del></small>
                            <?php endif; ?>
                            </h4>
                            <a data-id="<?=$sal->id;?>" class="add-to-cart-link" href="<?=PATH?>/cart/add?id=<?=$sal->id;?>">
                                <!-- <i></i> -->Добавить в заказ
                            </a> 
                        </div>
                        <div class="srch">
                            <span>-10%</span>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<?php endif; ?>
<!--sale product-end-->

