
/*—————— 顶部横栏 会员中心 商户平台 ——————*/
$(function() {
    var drapmenu = $('.use-layout');
    var drophover = 'use-layout-hover';
    var dropactive = 'use-arrow-up';
    drapmenu.hover(function() {
            $(this).addClass(drophover);
            $(this).children('.use-option').show();
            $(this).children('.use-arrow').addClass(dropactive)
        },
        function() {
            $(this).removeClass(drophover);
            $(this).children('.use-option').hide();
            $(this).children('.use-arrow').removeClass(dropactive)
});

/*—————— 婚嫁需求公告 放在首页 此处放置无法停顿——————*/

/*—————— 首页子菜单和右下方热门推荐 ——————*/
$(function () {
    Popular();
    tree()
});

var Popular = function () {
    $(".hm-hot-list li").hover(function () {
        $(this).attr("class", "cur");
        $(this).siblings().attr("class", "");
        $(this).siblings().find(".hm-hot-child").removeClass("flex-down").hide();
        $(this).children(".hm-hot-child").addClass("flex-down").show();
        loadImg($(this));
    }, function () {
        $(this).children(".hm-hot-child").removeClass("flex-up").removeClass("flex-down").hide();
        $(this).attr("class", "");
        $(this).parent(".hm-hot-list").children("li:first").attr("class", "cur");
        $(this).parent(".hm-hot-list").children("li:first").find(".hm-hot-child").addClass("flex-down").show()
    })
}, tree = function () {
    for (var b = document.getElementById("levels").getElementsByTagName("li"), c = b.length, a = 0; a < c; a++) b[a].onmouseover = function () {
        for (var a = 0; a < c; a++) b[a].getElementsByTagName("div")[2].style.display = "none", b[a].setAttribute("class", "");
        this.setAttribute("class", "cur");
        this.getElementsByTagName("div")[2].style.display = "block"
    };
    for (a = 0; a < c; a++) b[a].onmouseout = function () {
        this.setAttribute("class", "");
        this.getElementsByTagName("div")[2].style.display = "none"
    }
};
/*—————— 套餐详情 套餐选择 场地选择 ——————*/
$("[data-sku-id]").click(function (a) {
    a = $(this).attr("dada-sf-id");
    $("[dada-sf-id=" + a + "]").removeClass("check");
    $(this).addClass("check");
    })
});


/*—————— 套餐详情 套餐选择 场地选择 ——————*/
// $(function () {
//     $("[data-sku-id]").click(function (a) {
//         a = $(this).attr("dada-sf-id");
//         $("[dada-sf-id=" + a + "]").removeClass("check");
//         $(this).addClass("check");
//     })
// })

/*—————— 套餐详情 数量添加 ——————*/
function EditBuyNum(type) {
    var num = $("[name=BuyCarNum]").val();
    if (type == "cut" && num > 1) {
        num--;
    } else if (type == "add" && num < 99) {
        num++;
    }
    $("[name=BuyCarNum]").val(num);
}

/*—————— 套餐详情 商品介绍和评价切换 ——————*/
$(function () {
    var gdxswit_li = $('#gods-swit-list li');
    var gdxswit_unit = $('.gods-swit-uint');
    gdxswit_li.click(function () {
        $(this).addClass('current').siblings().removeClass('current');
        gdxswit_unit.eq($(this).index()).show().siblings().hide();
    });
    var gdxview_list = $("#gods-imagelist");
    var gdxview_cover = $('#gods-display-img');
    var gdxview_src = "";
    gdxview_list.children('li').click(function () {
        $this = $(this);
        $("#gods-imagelist li").removeClass('win_current');
        $this.addClass('win_current');
        gdxview_src = $this.children('img').attr('src');
        gdxview_cover.children('img').attr('src', gdxview_src);
    });

});

function loadImg($d) {
    if (!$d) {
        $d = $(document);
    }
    //图片延迟加载
    $d.find("img.lazy").lazyload({
        effect: "fadeIn",
        failure_limit: 5
    });
}


// ————————————————————————————————————
(function ($) {
    $.fn.slides = function (option) {
        option = $.extend({}, $.fn.slides.option, option);
        return this.each(function () {
            $('.' + option.container, $(this)).children().wrapAll('<div class="slides-control"/>');
            var elem = $(this), control = $('.slides-control', elem), total = control.children().size(), width = control.children().outerWidth(), height = control.children().outerHeight(), start = option.start - 1, effect = option.effect.indexOf(',') < 0 ? option.effect : option.effect.replace(' ', '').split(',')[0], paginationEffect = option.effect.indexOf(',') < 0 ? effect : option.effect.replace(' ', '').split(',')[1], next = 0, prev = 0, number = 0, current = 0, loaded, active, clicked, position, direction;
            if (total < 2) {
                return;
            }
            if (start < 0) {
                start = 0;
            }
            ;
            if (start > total) {
                start = total - 1;
            }
            ;
            if (option.start) {
                current = start;
            }
            ;
            if (option.randomize) {
                control.randomize();
            }
            $('.' + option.container, elem).css({overflow: 'hidden', position: 'relative'});
            control.css({position: 'relative', width: (width * 3), height: height, left: -width});
            control.children().css({position: 'absolute', top: 0, left: width, zIndex: 0, display: 'none'});
            if (option.autoHeight) {
                control.animate({height: control.children(':eq(' + start + ')').outerHeight()}, option.autoHeightSpeed);
            }
            if (option.preload && control.children()[0].tagName == 'IMG') {
                elem.css({background: 'url(' + option.preloadImage + ') no-repeat 50% 50%'});
                var img = $('img:eq(' + start + ')', elem).attr('src') + '?' + (new Date()).getTime();
                $('img:eq(' + start + ')', elem).attr('src', img).load(function () {
                    $(this).fadeIn(option.fadeSpeed, function () {
                        $(this).css({zIndex: 5});
                        elem.css({background: ''});
                        loaded = true;
                    });
                });
            } else {
                control.children(':eq(' + start + ')').fadeIn(option.fadeSpeed, function () {
                    loaded = true;
                });
            }
            if (option.bigTarget) {
                control.children().css({cursor: 'pointer'});
                control.children().click(function () {
                    animate('next', effect);
                    return false;
                });
            }
            if (option.hoverPause && option.play) {
                control.children().bind('mouseover', function () {
                    stop();
                });
                control.children().bind('mouseleave', function () {
                    pause();
                });
            }
            if (option.generateNextPrev) {
                $('.' + option.container, elem).after('<a href="#" class="' + option.prev + '">Prev</a>');
                $('.' + option.prev, elem).after('<a href="#" class="' + option.next + '">Next</a>');
            }
            $('.' + option.next, elem).click(function (e) {
                e.preventDefault();
                if (option.play) {
                    pause();
                }
                ;
                animate('next', effect);
            });
            $('.' + option.prev, elem).click(function (e) {
                e.preventDefault();
                if (option.play) {
                    pause();
                }
                ;
                animate('prev', effect);
            });
            if (option.generatePagination) {
                elem.append('<ul class=' + option.paginationClass + '></ul>');
                control.children().each(function () {
                    $('.' + option.paginationClass, elem).append('<li><a href="#' + number + '">' + (number + 1) + '</a></li>');
                    number++;
                });
            } else {
                $('.' + option.paginationClass + ' li a', elem).each(function () {
                    $(this).attr('href', '#' + number);
                    number++;
                });
            }
            $('.' + option.paginationClass + ' li a[href=#' + start + ']', elem).parent().addClass('current');
            $('.' + option.paginationClass + ' li a', elem).click(function () {
                if (option.play) {
                    pause();
                }
                ;
                clicked = $(this).attr('href').replace('#', '');
                if (current != clicked) {
                    animate('pagination', paginationEffect, clicked);
                }
                return false;
            });
            $('a.link', elem).click(function () {
                if (option.play) {
                    pause();
                }
                ;
                clicked = $(this).attr('href').replace('#', '') - 1;
                if (current != clicked) {
                    animate('pagination', paginationEffect, clicked);
                }
                return false;
            });
            if (option.play) {
                playInterval = setInterval(function () {
                    animate('next', effect);
                }, option.play);
                elem.data('interval', playInterval);
            }
            ;
            function stop() {
                clearInterval(elem.data('interval'));
            };
            function pause() {
                if (option.pause) {
                    clearTimeout(elem.data('pause'));
                    clearInterval(elem.data('interval'));
                    pauseTimeout = setTimeout(function () {
                        clearTimeout(elem.data('pause'));
                        playInterval = setInterval(function () {
                            animate("next", effect);
                        }, option.play);
                        elem.data('interval', playInterval);
                    }, option.pause);
                    elem.data('pause', pauseTimeout);
                } else {
                    stop();
                }
            };
            function animate(direction, effect, clicked) {
                if (!active && loaded) {
                    active = true;
                    switch (direction) {
                        case'next':
                            prev = current;
                            next = current + 1;
                            next = total === next ? 0 : next;
                            position = width * 2;
                            direction = -width * 2;
                            current = next;
                            break;
                        case'prev':
                            prev = current;
                            next = current - 1;
                            next = next === -1 ? total - 1 : next;
                            position = 0;
                            direction = 0;
                            current = next;
                            break;
                        case'pagination':
                            next = parseInt(clicked, 10);
                            prev = $('.' + option.paginationClass + ' li.current a', elem).attr('href').replace('#', '');
                            if (next > prev) {
                                position = width * 2;
                                direction = -width * 2;
                            } else {
                                position = 0;
                                direction = 0;
                            }
                            current = next;
                            break;
                    }
                    if (effect === 'fade') {
                        option.animationStart();
                        if (option.crossfade) {
                            control.children(':eq(' + next + ')', elem).css({zIndex: 10}).fadeIn(option.fadeSpeed, function () {
                                control.children(':eq(' + prev + ')', elem).css({display: 'none', zIndex: 0});
                                $(this).css({zIndex: 0});
                                option.animationComplete(next + 1);
                                active = false;
                            });
                        } else {
                            option.animationStart();
                            control.children(':eq(' + prev + ')', elem).fadeOut(option.fadeSpeed, function () {
                                if (option.autoHeight) {
                                    control.animate({height: control.children(':eq(' + next + ')', elem).outerHeight()}, option.autoHeightSpeed, function () {
                                        control.children(':eq(' + next + ')', elem).fadeIn(option.fadeSpeed);
                                    });
                                } else {
                                    control.children(':eq(' + next + ')', elem).fadeIn(option.fadeSpeed, function () {
                                        if ($.browser.msie) {
                                            $(this).get(0).style.removeAttribute('filter');
                                        }
                                    });
                                }
                                option.animationComplete(next + 1);
                                active = false;
                            });
                        }
                    } else {
                        control.children(':eq(' + next + ')').css({left: position, display: 'block'});
                        if (option.autoHeight) {
                            option.animationStart();
                            control.animate({
                                left: direction,
                                height: control.children(':eq(' + next + ')').outerHeight()
                            }, option.slideSpeed, function () {
                                control.css({left: -width});
                                control.children(':eq(' + next + ')').css({left: width, zIndex: 5});
                                control.children(':eq(' + prev + ')').css({left: width, display: 'none', zIndex: 0});
                                option.animationComplete(next + 1);
                                active = false;
                            });
                        } else {
                            option.animationStart();
                            control.animate({left: direction}, option.slideSpeed, function () {
                                control.css({left: -width});
                                control.children(':eq(' + next + ')').css({left: width, zIndex: 5});
                                control.children(':eq(' + prev + ')').css({left: width, display: 'none', zIndex: 0});
                                option.animationComplete(next + 1);
                                active = false;
                            });
                        }
                    }
                    if (option.pagination) {
                        $('.' + option.paginationClass + ' li.current', elem).removeClass('current');
                        $('.' + option.paginationClass + ' li a[href=#' + next + ']', elem).parent().addClass('current');
                    }
                }
            };
        });
    };
    $.fn.slides.option = {
        preload: false,
        preloadImage: '/img/loading.gif',
        container: 'slider-container',
        generateNextPrev: false,
        next: 'next',
        prev: 'prev',
        pagination: true,
        generatePagination: true,
        paginationClass: 'slider-page',
        fadeSpeed: 350,
        slideSpeed: 350,
        start: 1,
        effect: 'slide',
        crossfade: false,
        randomize: false,
        play: 0,
        pause: 0,
        hoverPause: false,
        autoHeight: false,
        autoHeightSpeed: 350,
        bigTarget: false,
        animationStart: function () {
        },
        animationComplete: function () {
        }
    };
    $.fn.randomize = function (callback) {
        function randomizeOrder() {
            return (Math.round(Math.random()) - 0.5);
        }

        return ($(this).each(function () {
            var $this = $(this);
            var $children = $this.children();
            var childCount = $children.length;
            if (childCount > 1) {
                $children.hide();
                var indices = [];
                for (i = 0; i < childCount; i++) {
                    indices[indices.length] = i;
                }
                indices = indices.sort(randomizeOrder);
                $.each(indices, function (j, k) {
                    var $child = $children.eq(k);
                    var $clone = $child.clone(true);
                    $clone.show().appendTo($this);
                    if (callback !== undefined) {
                        callback($child, $clone);
                    }
                    $child.remove();
                });
            }
        }));
    };
    $.fn.touchClick=function (select, callback) {
        var se = (select != "" && !$.isFunction(select)) ? select : "";
        var cb = $.isFunction(select) ? select : callback;
        $(this).each(function (index, element) {
            var tc = false;
            $(this).on({
                "touchstart": function () {
                    tc = true;
                },
                "touchmove": function () {
                    tc = false;
                },
                "touchend": function (event) {
                    event.index = index;
                    return tc ? $.isFunction(cb) ? cb.call(element, event) : "" : "";
                }
            }, se);
        });
    };
})(jQuery);
(function ($) {
    $.extend($.easing, {
        easeInSine: function (x, t, b, c, d) {
            return -c * Math.cos(t / d * (Math.PI / 2)) + c + b
        }
    });
    (function ($) {
        $.fn.xslider = function (settings) {
            settings = $.extend({}, $.fn.xslider.defaults, settings);
            this.each(function () {
                var scrollobj = settings.scrollobj || $(this).find("ul");
                var maxlength = settings.maxlength || (settings.dir == "H" ? scrollobj.parent().width() : scrollobj.parent().height());
                var scrollunits = scrollobj.find("li");
                var unitlen = settings.unitlen || (settings.dir == "H" ? scrollunits.eq(0).outerWidth() : scrollunits.eq(0).outerHeight());
                var unitdisplayed = settings.unitdisplayed;
                var nowlength = settings.nowlength || scrollunits.length * unitlen;
                var offset = 0;
                var sn = 0;
                var movelength = unitlen * settings.movelength;
                var moving = false;
                var btnright = $(this).find("a.aright");
                var btnleft = $(this).find("a.aleft");
                if (settings.dir == "H") {
                    scrollobj.css("left", "0px")
                } else {
                    scrollobj.css("top", "0px")
                }
                ;
                if (nowlength > maxlength) {
                    btnleft.addClass("agrayleft");
                    btnright.removeClass("agrayright");
                    offset = nowlength - maxlength
                } else {
                    btnleft.addClass("agrayleft");
                    btnright.addClass("agrayright")
                }
                ;
                btnleft.click(function () {
                    if ($(this).is("[class*='agrayleft']")) {
                        return false
                    }
                    ;
                    if (!moving) {
                        moving = true;
                        sn -= movelength;
                        if (sn > unitlen * unitdisplayed - maxlength) {
                            $.fn.xslider.scroll(scrollobj, -sn, settings.dir, function () {
                                moving = false
                            })
                        } else {
                            $.fn.xslider.scroll(scrollobj, 0, settings.dir, function () {
                                moving = false
                            });
                            sn = 0;
                            $(this).addClass("agrayleft")
                        }
                        ;
                        btnright.removeClass("agrayright")
                    }
                    ;
                    return false
                });
                btnright.click(function () {
                    if ($(this).is("[class*='agrayright']")) {
                        return false
                    }
                    ;
                    if (!moving) {
                        moving = true;
                        sn += movelength;
                        if (sn < offset - (unitlen * unitdisplayed - maxlength)) {
                            $.fn.xslider.scroll(scrollobj, -sn, settings.dir, function () {
                                moving = false
                            })
                        } else {
                            $.fn.xslider.scroll(scrollobj, -offset, settings.dir, function () {
                                moving = false
                            });
                            sn = offset;
                            $(this).addClass("agrayright")
                        }
                        ;
                        btnleft.removeClass("agrayleft")
                    }
                    ;
                    return false
                });
                if (settings.autoscroll) {
                    $.fn.xslider.autoscroll($(this), settings.autoscroll)
                }
            })
        }
    })($);
    $.fn.xslider.defaults = {maxlength: 0, scrollobj: null, unitlen: 0, nowlength: 0, dir: "H", autoscroll: null};
    $.fn.xslider.scroll = function (obj, w, dir, callback) {
        if (dir == "H") {
            obj.animate({left: w}, 230, "easeInSine", callback)
        } else {
            obj.animate({top: w}, 230, "easeInSine", callback)
        }
    };
    $.fn.xslider.autoscroll = function (obj, time) {
        var vane = "right";

        function autoscrolling() {
            if (vane == "right") {
                if (!obj.find("a.agrayright").length) {
                    obj.find("a.aright").trigger("click")
                } else {
                    vane = "left"
                }
            }
            ;
            if (vane == "left") {
                if (!obj.find("a.agrayleft").length) {
                    obj.find("a.aleft").trigger("click")
                } else {
                    vane = "right"
                }
            }
        };
        var scrollTimmer = setInterval(autoscrolling, time);
        obj.hover(function () {
            clearInterval(scrollTimmer)
        }, function () {
            scrollTimmer = setInterval(autoscrolling, time)
        })
    };
})(jQuery);

