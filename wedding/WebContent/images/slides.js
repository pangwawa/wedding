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


    // $.fn.randomize = function (callback) {
    //     function randomizeOrder() {
    //         return (Math.round(Math.random()) - 0.5);
    //     }
    //
    //     return ($(this).each(function () {
    //         var $this = $(this);
    //         var $children = $this.children();
    //         var childCount = $children.length;
    //         if (childCount > 1) {
    //             $children.hide();
    //             var indices = [];
    //             for (i = 0; i < childCount; i++) {
    //                 indices[indices.length] = i;
    //             }
    //             indices = indices.sort(randomizeOrder);
    //             $.each(indices, function (j, k) {
    //                 var $child = $children.eq(k);
    //                 var $clone = $child.clone(true);
    //                 $clone.show().appendTo($this);
    //                 if (callback !== undefined) {
    //                     callback($child, $clone);
    //                 }
    //                 $child.remove();
    //             });
    //         }
    //     }));
    // };
    // $.fn.touchClick=function (select, callback) {
    //     var se = (select != "" && !$.isFunction(select)) ? select : "";
    //     var cb = $.isFunction(select) ? select : callback;
    //     $(this).each(function (index, element) {
    //         var tc = false;
    //         $(this).on({
    //             "touchstart": function () {
    //                 tc = true;
    //             },
    //             "touchmove": function () {
    //                 tc = false;
    //             },
    //             "touchend": function (event) {
    //                 event.index = index;
    //                 return tc ? $.isFunction(cb) ? cb.call(element, event) : "" : "";
    //             }
    //         }, se);
    //     });
    // };
})(jQuery);
// (function ($) {
//     $.extend($.easing, {
//         easeInSine: function (x, t, b, c, d) {
//             return -c * Math.cos(t / d * (Math.PI / 2)) + c + b
//         }
//     });
//     (function ($) {
//         $.fn.xslider = function (settings) {
//             settings = $.extend({}, $.fn.xslider.defaults, settings);
//             this.each(function () {
//                 var scrollobj = settings.scrollobj || $(this).find("ul");
//                 var maxlength = settings.maxlength || (settings.dir == "H" ? scrollobj.parent().width() : scrollobj.parent().height());
//                 var scrollunits = scrollobj.find("li");
//                 var unitlen = settings.unitlen || (settings.dir == "H" ? scrollunits.eq(0).outerWidth() : scrollunits.eq(0).outerHeight());
//                 var unitdisplayed = settings.unitdisplayed;
//                 var nowlength = settings.nowlength || scrollunits.length * unitlen;
//                 var offset = 0;
//                 var sn = 0;
//                 var movelength = unitlen * settings.movelength;
//                 var moving = false;
//                 var btnright = $(this).find("a.aright");
//                 var btnleft = $(this).find("a.aleft");
//                 if (settings.dir == "H") {
//                     scrollobj.css("left", "0px")
//                 } else {
//                     scrollobj.css("top", "0px")
//                 }
//                 ;
//                 if (nowlength > maxlength) {
//                     btnleft.addClass("agrayleft");
//                     btnright.removeClass("agrayright");
//                     offset = nowlength - maxlength
//                 } else {
//                     btnleft.addClass("agrayleft");
//                     btnright.addClass("agrayright")
//                 }
//                 ;
//                 btnleft.click(function () {
//                     if ($(this).is("[class*='agrayleft']")) {
//                         return false
//                     }
//                     ;
//                     if (!moving) {
//                         moving = true;
//                         sn -= movelength;
//                         if (sn > unitlen * unitdisplayed - maxlength) {
//                             $.fn.xslider.scroll(scrollobj, -sn, settings.dir, function () {
//                                 moving = false
//                             })
//                         } else {
//                             $.fn.xslider.scroll(scrollobj, 0, settings.dir, function () {
//                                 moving = false
//                             });
//                             sn = 0;
//                             $(this).addClass("agrayleft")
//                         }
//                         ;
//                         btnright.removeClass("agrayright")
//                     }
//                     ;
//                     return false
//                 });
//                 btnright.click(function () {
//                     if ($(this).is("[class*='agrayright']")) {
//                         return false
//                     }
//                     ;
//                     if (!moving) {
//                         moving = true;
//                         sn += movelength;
//                         if (sn < offset - (unitlen * unitdisplayed - maxlength)) {
//                             $.fn.xslider.scroll(scrollobj, -sn, settings.dir, function () {
//                                 moving = false
//                             })
//                         } else {
//                             $.fn.xslider.scroll(scrollobj, -offset, settings.dir, function () {
//                                 moving = false
//                             });
//                             sn = offset;
//                             $(this).addClass("agrayright")
//                         }
//                         ;
//                         btnleft.removeClass("agrayleft")
//                     }
//                     ;
//                     return false
//                 });
//                 if (settings.autoscroll) {
//                     $.fn.xslider.autoscroll($(this), settings.autoscroll)
//                 }
//             })
//         }
//     })($);
//     $.fn.xslider.defaults = {maxlength: 0, scrollobj: null, unitlen: 0, nowlength: 0, dir: "H", autoscroll: null};
//     $.fn.xslider.scroll = function (obj, w, dir, callback) {
//         if (dir == "H") {
//             obj.animate({left: w}, 230, "easeInSine", callback)
//         } else {
//             obj.animate({top: w}, 230, "easeInSine", callback)
//         }
//     };
//     $.fn.xslider.autoscroll = function (obj, time) {
//         var vane = "right";
//
//         function autoscrolling() {
//             if (vane == "right") {
//                 if (!obj.find("a.agrayright").length) {
//                     obj.find("a.aright").trigger("click")
//                 } else {
//                     vane = "left"
//                 }
//             }
//             ;
//             if (vane == "left") {
//                 if (!obj.find("a.agrayleft").length) {
//                     obj.find("a.aleft").trigger("click")
//                 } else {
//                     vane = "right"
//                 }
//             }
//         };
//         var scrollTimmer = setInterval(autoscrolling, time);
//         obj.hover(function () {
//             clearInterval(scrollTimmer)
//         }, function () {
//             scrollTimmer = setInterval(autoscrolling, time)
//         })
//     };
// })(jQuery);
// (function () {
//     window.onDrag = function () {
//         this.height = this.width = this.insY = this.insX = this.disY = this.disX = 0;
//         this.mask = this.effect = null;
//         this.dragDown = "";
//         this.WINDOWWIDTH = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth;
//         this.WINDOWHEIGHT = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight;
//         this.draggable = 1;
//         this.error = "draggable-error";
//         this.active = "draggable-on";
//         this.ZINDEX = 12E4;
//         this.bool = !0
//     };
//     onDrag.prototype = {
//         __init: function (a) {
//             a && (this.effect = this.querySelector(a.container), this.dragDown = this.querySelector(a.dragDown), this.mask = this.querySelector(a.dragMask), this.width = parseInt(a.width), this.draggable = a.draggable);
//             this.__settingEl();
//             this.__position()
//         }, __settingEl: function () {
//             var a = this, b = a.effect, c = this.width || 320, d = this.ZINDEX;
//             this.effect.style.width = c + "px";
//             this.effect.style.left = this.WINDOWWIDTH / 2 - c / 2 + "px";
//             this.effect.style.top = this.WINDOWHEIGHT / 3 + "px";
//             this.effect.style.zIndex = d;
//             this.effect.style.position = "fixed";
//             (function () {
//                 a.handeEvent("resize", window, function () {
//                     var d = window;
//                     a.WINDOWWIDTH = d.innerWidth ? d.innerWidth : document.documentElement.clientWidth;
//                     a.WINDOWHEIGHT = d.innerHeight ? d.innerHeight : document.documentElement.clientHeight;
//                     b.style.left = a.WINDOWWIDTH / 2 - c / 2 + "px";
//                     b.style.top = a.WINDOWHEIGHT / 3 + "px"
//                 })
//             })()
//         }, __position: function () {
//             var a = this, b = a.dragDown;
//             this.mask && this.handeEvent("click", this.mask, function () {
//                 var b = 1;
//                 window.clearInterval(d);
//                 var d = setInterval(function () {
//                     1 >= b ? (b++, a.addClass(a.effect, a.error)) : (b = 0, a.removeClass(a.effect, a.error), window.clearInterval(d));
//                     console.log(b)
//                 }, 220)
//             });
//             this.draggable && (this.dragDown.onmousedown = function (c) {
//                 c = c || window.event;
//                 a.bool = !0;
//                 a.effect.style.zIndex = a.ZINDEX + 1;
//                 a.addClass(this, a.active);
//                 a.disX = c.clientX - a.effect.offsetLeft;
//                 a.disY = c.clientY - a.effect.offsetTop;
//                 document.onmousemove = function (b) {
//                     b = b || window.event;
//                     a.bool && (a.insX = b.clientX - a.disX, a.insY = b.clientY - a.disY, a.insX >= a.WINDOWWIDTH - a.effect.offsetWidth && (a.insX = a.WINDOWWIDTH - a.effect.offsetWidth), 0 >= a.insX && (a.insX = 0), a.insY >= a.WINDOWHEIGHT - a.effect.offsetHeight && (a.insY = a.WINDOWHEIGHT - a.effect.offsetHeight), 0 >= a.insY && (a.insY = 0), a.effect.style.left = a.insX + "px", a.effect.style.top = a.insY + "px")
//                 };
//                 b.onmouseup = function (b) {
//                     a.effect.style.zIndex = a.ZINDEX;
//                     a.removeClass(this, a.active);
//                     a.bool = !1
//                 };
//                 return !1
//             })
//         }, hide: function () {
//             this.effect.style.display = "none";
//             this.mask && (this.mask.style.display = "none");
//             this.__settingEl()
//         }, show: function () {
//             this.effect.style.display = "block";
//             this.mask && (this.mask.style.display = "block")
//         }, setSize: function (a, b) {
//             this.effect.style.width = a + "px";
//             this.effect.style.height = b + "px"
//         }, zIndex: function (a) {
//             this.ZINDEX = a;
//             this.effect.style.zIndex = a;
//             this.mask && (this.mask.style.zIndex = a - 10)
//         }, addClass: function (a, b) {
//             !a || !b || a.className && -1 != a.className.search(new RegExp("\\b" + b + "\\b")) || (a.className += (a.className ? " " : "") + b)
//         }, removeClass: function (a, b) {
//             !a || !b || a.className && -1 == a.className.search(new RegExp("\\b" + b + "\\b")) || (a.className = a.className.replace(new RegExp("\\s*\\b" + b + "\\b", "g"), ""))
//         }, querySelector: function (a, b) {
//             if (a || b) {
//                 if (a)return document.getElementById(a);
//                 if (b)return b.getElementsByClassName(a)
//             }
//         }, handeEvent: function (a, b, c) {
//             b && (b.attachEvent ? b.attachEvent("on" + a, c) : b.addEventListener(a, c, !1))
//         }
//     }
// })();
// (function (e) {
//     var d = {
//         init: function (b, a) {
//             d.fillHtml(b, a);
//             d.bindEvent(b, a)
//         }, fillHtml: function (b, a) {
//             b.empty();
//             1 < a.current ? b.append('<a href="javascript:;" class="prev">&lt;</a>') : (b.remove(".prevPage"), b.append('<a href="javascript:;" class="disabled">&lt;</a>'));
//             1 != a.current && 4 <= a.current && 4 != a.pageCount && b.append('<a href="javascript:;" class="tcdNumber">1</a>');
//             2 < a.current - 2 && a.current <= a.pageCount && 5 < a.pageCount && b.append("<span>...</span>");
//             var c = a.current - 2, d = a.current + 2;
//             (1 < c && 4 > a.current || 1 == a.current) && d++;
//             for (a.current > a.pageCount - 4 && a.current >= a.pageCount && c--; c <= d; c++)c <= a.pageCount && 1 <= c && (c != a.current ? b.append('<a href="javascript:;" class="tcdNumber">' + c + "</a>") : b.append('<a href="javascript:;" class="cur">' + c + "</a>"));
//             a.current + 2 < a.pageCount - 1 && 1 <= a.current && 5 < a.pageCount && b.append("<span>...</span>");
//             a.current != a.pageCount && a.current < a.pageCount - 2 && 4 != a.pageCount && b.append('<a href="javascript:;" class="tcdNumber">' + a.pageCount + "</a>");
//             a.current < a.pageCount ? b.append('<a href="javascript:;" class="next">&gt;</a>') : (b.remove(".nextPage"), b.append('<a href="javascript:;" class="disabled">&gt;</a>'))
//         }, bindEvent: function (b, a) {
//             return function () {
//                 b.on("click", "a.tcdNumber", function () {
//                     var c = parseInt(e(this).text());
//                     d.fillHtml(b, {current: c, pageCount: a.pageCount});
//                     "function" == typeof a.backFn && a.backFn(c)
//                 });
//                 b.on("click", "a.prev", function () {
//                     var c = parseInt(b.children("a.cur").text());
//                     d.fillHtml(b, {current: c - 1, pageCount: a.pageCount});
//                     "function" == typeof a.backFn && a.backFn(c - 1)
//                 });
//                 b.on("click", "a.next", function () {
//                     var c = parseInt(b.children("a.cur").text());
//                     d.fillHtml(b, {current: c + 1, pageCount: a.pageCount});
//                     "function" == typeof a.backFn && a.backFn(c + 1)
//                 })
//             }()
//         }
//     };
//     e.fn.createPage = function (b) {
//         b = e.extend({
//             pageCount: 10, current: 1, backFn: function(page){
//                 var url = window.location.href;
//                 if(!/^[0-9]*[1-9][0-9]*$/.test(page))return;
//                 if(url.indexOf('?') != -1){
//                     if(url.indexOf('page') != -1){
//                         var reg=eval('/(page=)([^&]*)/gi');
//                         url = url.replace(reg,'page='+page);
//                     }else{
//                         url = url + '&page='+page;
//                     }
//                 }else{
//                     url = url + '?page='+page;}window.location = url;
//             }
//         }, b);
//         d.init(this, b)
//     }
// })(jQuery);
// (function (w, d) {
//     window.dialog = {
//         showDialog: function (mes) {
//             base.msg(mes);
//         }
//     }
//     w.base = {
//         //返回元素
//         getById: function (s) {
//             if (!s) {
//                 return;
//             }
//             return d.getElementById(s);
//         },
//         //倒计时跳转
//         skipUrl: function (c) {
//             var c = c || {}, d = {s_obj: c.obj, s_url: c.url, s_len: c.time || 10, s_url_name: c.urlName},
//                 e = d.s_len > 60 ? 60 : d.s_len;
//             if (typeof d.s_url == 'undefined' || typeof d.s_len == 'undefined') return;
//             var timeout = function () {
//                 e--;
//                 var a = base.getById(d.s_obj);
//                 a.innerHTML = e + '\u79d2\u540e\u8df3\u8f6c\u81f3' + d.s_url_name;
//                 if (e == 0) {
//                     w.location = d.s_url;
//                     w.clearTimeout(b);
//                 } else {
//                     var b = w.setTimeout(timeout, 1E3);
//                 }
//             };
//             timeout();
//         },
//         //追加html
//         appendHtml: function (target, doc, length) {
//             var a = [], config = {target: base.getById(target), doc: base.getById(doc)};
//             for (var i = 0; i < length; i++) {
//                 a.push(config.doc.value);
//             }
//             config.target.innerHTML += a.join('');
//         },
//         //添加类
//         addCur: function (obj, clazz) {
//             if (typeof obj == 'undefined' || typeof clazz == 'undefined') return;
//             var collection = base.getById(obj).getElementsByTagName('li');
//             var length = collection.length;
//             for (var i = 0; i < length; i++) {
//                 collection[i].onclick = function () {
//                     for (var j = 0; j < length; j++) {
//                         collection[j].className = collection[j].className.replace(clazz, '');
//                     }
//                     this.className = clazz;
//                 }
//             }
//         },
//         //加载js
//         loadjs: function (a) {
//             var b = document.createElement('script');
//             b.type = 'text/javascript';
//             b.src = a;
//             document.getElementsByTagName('body')[0].appendChild(b);
//         },
//         //监听事件
//         eventListen: function (e, b, f) {
//             if (base.getById(e)) {
//                 var h = ["load", "change", "submit", "focus", "blur"],
//                     c = {
//                         eventDefault: function (a) {
//                             switch (a.id) {
//                                 case e:
//                                     "function" == typeof f && f(a)
//                             }
//                         },
//                         isBubb: function (a) {
//                             return -1 != h.indexOf(a) ? !0 : !1
//                         }
//                     };
//                 if (window.addEventListener) document.addEventListener(b, function (a) {
//                     c.eventDefault(a.target)
//                 }, c.isBubb(b));
//                 else if (window.attachEvent) {
//                     var d = !1;
//                     switch (b) {
//                         case "change":
//                             var g = base.getById(e);
//                             g.attachEvent("onpropertychange", function (a) {
//                                 c.eventDefault(g)
//                             });
//                             break;
//                         case "blur":
//                             d = !0;
//                             b = "focusout";
//                             break;
//                         case "focus":
//                             d = !0;
//                             b = "focusin";
//                             break;
//                         default:
//                             d = !0
//                     }
//                     d && document.attachEvent("on" + b, function (a) {
//                         c.eventDefault(a.srcElement)
//                     })
//                 }
//             }
//         },
//         //点击事件（支持手机端）
//         click:function (select, callback) {
//             if(CONFIG.isMobile){
//                 select.touchClick(callback);
//             }else {
//                 select.on('click',callback);
//             }
//         },
//         //动态添加js
//         url: function () {
//             var href = d.URL;
//             if (!href) return;
//             if (href.indexOf('seller') > -1) {
//                 var src = CONFIG.root + 'library/seData.js?v1';
//             } else if (href.indexOf('agent') > -1) {
//                 var src = CONFIG.root + 'library/agData.js?v1';
//             } else {
//                 var src = CONFIG.root + 'library/usData.js?v1';
//             }
//             base.loadjs(src);
//         },
//         msg: function (mes, callback) {
//             if(CONFIG.isMobile){
//                 base.mMsg(mes, callback);
//             }else {
//                 base.pMsg(mes, callback);
//             }
//         },
//         //PC提示框
//         pMsg: function (mes,callback) {
//             var a = '<div class="dialog-mask" id="dialog-mask" data-type="dialog-close" style="display: none;opacity: 0.5;filter: alpha(opacity=50);"></div>';
//             a += '<div class="dialog-wrap" id="dialog-wrap" style="display:none;height:159px;left: 0;top: 0;right: 0;bottom: 0;">';
//             a += '<div class="dialog-title" id="dialog-title">提示信息<span class="dialog-close" data-type="dialog-close"></span> </div>';
//             a += '<div class="dialog-text">' + mes + '</div>';
//             a += '<div class="dialog-btn"> <!--<a href="javascript:;" class="dialog-in-btn0" data-type="dialog-close">取消</a>--><a href="javascript:;" class="dialog-in-btn1" data-type="dialog-close" style="margin-top: 10px;">确认</a> </div></div>';
//             $(document.body).append(a);
//             $("#dialog-mask").fadeIn();
//             $("#dialog-wrap").fadeIn();
//             $("[data-type='dialog-close']").click(function () {
//                 $("#dialog-mask").remove();
//                 $("#dialog-wrap").remove();
//                 $.isFunction(callback) ? callback() : "";
//             });
//             new onDrag().__init({
//                 container: 'dialog-wrap',
//                 dragDown: 'dialog-title',
//                 dragMask: 'dialog-mask',
//                 draggable: true,
//                 width: 380
//             });
//         },
//         //手机提示框
//         mMsg: function (msg, callback) {
//             if ($("#mAlert").size() == 0) {   //避免重复添加
//                 var str = '<div id="mAlert"><div class="mAlertBox">' +
//                     '<div class="alertContent"></div>' +
//                     '</div></div>';
//                 $("body").append(str);
//             }
//             var dialog = $("#mAlert");
//
//             dialog.find(".alertContent").text(msg);
//             base.dxlLayerFixedShow(dialog);
//
//             setTimeout(toCloseAlert, 1800);  //自动关闭
//
//             function toCloseAlert() {//关闭弹出层
//                 dialog.fadeOut(800, function () {
//                     dialog.remove();
//                 })
//                 $.isFunction(callback) ? callback() : "";
//             }
//         },
//         goTop:function () {
//             $("#gotop").click(function(e) {
//                 $('body,html').animate({scrollTop:0},100);
//             });
//             $("#gotop").mouseover(function(e) {
//                 $(this).css("background","url(img/images/gotop.png) no-repeat 0px 0px");
//             });
//             $("#gotop").mouseout(function(e) {
//                 $(this).css("background","url(img/images/gotop.png) no-repeat -70px 0px");
//             });
//
//             $(window).scroll(function(e) {
//                 if($(window).scrollTop()>100)
//                     $("#gotop").slideDown(1000);
//                 else
//                     $("#gotop").slideUp(1000);
//             });
//         },
//         reloadPage:function () {
//             window.location=window.location.href;
//         },
//         dxlLayerFixedShow: function (obj) {
//             var _obj = obj;
//             $(window).on("resize.dxlsc", function () {
//                 base._dxlLayerFixedShow(_obj);
//             }).resize();
//         },
//         _dxlLayerFixedShow: function (obj) {
//             var _this = obj;
//             var def = {
//                 w: $(window).width() / 2,
//                 h: ($(window).height() / 2) - 40,
//                 obj_w: _this.width() / 2,
//                 obj_h: _this.height() / 2,
//                 top: "auto",
//                 left: "auto",
//                 right: "auto",
//                 bottom: "auto"
//             }
//             if (_this.parent().css("position") == "relative") {
//                 var _thisRelative = _this.parent();
//                 def.w = _thisRelative.offset().left + (_thisRelative.width() / 2);
//             }
//             _this.css("position", "absolute");
//             def.top = def.h - def.obj_h;
//             def.top <= 0 ? def.top = 0 : "";
//             def.left = def.w - def.obj_w;
//             _this.css({"left": def.left, "top": def.top, "right": def.right, "bottom": def.bottom});
//             return _this;
//         },
//         success:function (mes) {
//             if(CONFIG.isMobile){
//                 base.mMsg(mes);
//             }else {
//                 base.pcSuccess(mes);
//             }
//         },
//         //成功提示信息
//         pcSuccess: function (mes) {
//             var html = '<div class="prompt-slider" data-id="suc"><div class="prompt-slider-mask" style="opacity: 0.7;filter: alpha(opacity=70);"></div><div class="prompt-slider-text">' + mes + '</div></div>';
//             $(document.body).append(html);
//             $("[data-id=suc]").fadeIn();
//             var time = window.setTimeout(function () {
//                 $("[data-id=suc]").remove();
//                 window.clearTimeout(time);
//             }, 1500);
//         },
//         //检测浏览器
//         userAgent: function () {
//             var ua = navigator.userAgent.toLowerCase();
//             return {
//                 isWebkit: /webkit|khtml/.test(ua),
//                 isOpera: ua.indexOf('opera') > -1,
//                 isFirefox: ua.indexOf('firefox') > -1,
//                 isIE6: ua.indexOf('msie 6') > -1,
//                 isIE7: ua.indexOf('msie 7') > -1,
//                 isIE8: ua.indexOf('msie 8') > -1,
//                 isIE9: ua.indexOf('msie 9') > -1
//             }
//         },
//         searchUrl: function () {
//             var keywords = document.getElementById('keywords').value;
//             var url = window.location.href;
//             if (url.indexOf('?') != -1) {
//                 if (url.indexOf('keywords') != -1) {
//                     var reg = eval('/(keywords=)([^&]*)/gi');
//                     url = url.replace(reg, 'keywords=' + keywords);
//                 } else {
//                     url = url + '&keywords=' + keywords;
//                 }
//             } else {
//                 url = url + '?keywords=' + keywords;
//             }
//             window.location = url;
//         },
//         animate: function (wid) {
//             $('.loading').animate({'width': wid}, 50);
//         },
//         //html转义
//         htmlEncode: function (_str) {
//             _str = _str.replace(/&/g, "&amp;");
//             _str = _str.replace(/>/g, "&gt;");
//             _str = _str.replace(/</g, "&lt;");
//             _str = _str.replace(/"/g, "&quot;");
//             _str = _str.replace(/'/g, "&#39;");
//             return _str;
//         },
//         //html反转义
//         htmlDecode: function (_str) {
//             _str = _str.replace(/&amp;/g, "&");
//             _str = _str.replace(/&gt;/g, ">");
//             _str = _str.replace(/&lt;/g, "<");
//             _str = _str.replace(/&quot;/g, '"');
//             _str = _str.replace(/&#39;/g, "'");
//             return _str;
//         }
//     }
// })(window, document);
//
// (function () {
//     photoAlbum = function (imageList, setting) {
//         //imageList 目标图片容器
//         //setting 自定义设置参数
//         this.init(imageList, setting)
//     };
//     photoAlbum.fn = photoAlbum.prototype = {
//         init: function (imageList, setting) {
//             this.targetElement = $(imageList.target)[0],
//                 this.photoImageList = this.targetElement.getAttribute("data-imagelist").split("||"),
//                 this.photoImageName = this.targetElement.getAttribute("data-imagename"),
//                 this.photoAlbum = $(setting.container)[0],
//                 this.photoContainer = $(setting.photoContainer)[0],
//                 this.photoCtrlL = $(setting.prevButton)[0],
//                 this.photoCtrlR = $(setting.nextButton)[0],
//                 this.photoInfoBar = $(setting.photoToolbar)[0],
//                 this.photoShadow = $(setting.photoImage)[0],
//                 this.navContainer = $(setting.photoImageList)[0],
//                 this.currentCount = $(setting.curImgNum)[0],
//                 this.countAll = $(setting.allImgNum)[0],
//                 this.photoName = $(setting.photoName)[0],
//                 this.currentClass = setting.activeClass || "active-show";
//
//             this.photoAuto();
//             this.photoAlbumResize();
//             this.photoAlbumCreat();
//             this.photoAlbumControl()
//         },
//         setCSS: function (applyObj, style) {
//             if (typeof style == 'object') {
//                 var cssName = [], cssData = [];
//                 for (name in style) {
//                     cssName.push(name);
//                     cssData.push(style[name])
//                 };
//                 for (var i = 0; i < cssName.length; i++) {
//                     applyObj.style[cssName[i]] = cssData[i]
//                 }
//             }
//         },
//         photoAlbumResize: function () {
//             var adjustWidth = adjustHeight = domElmWidth = domElmHeight = calcWidth = calcHeight = 0;
//             if (this.photoInfoBar && this.photoCtrlL) {
//                 adjustWidth = this.photoInfoBar.clientHeight;
//                 adjustHeight = this.photoCtrlL.clientWidth;
//                 domElmWidth = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth;
//                 domElmHeight = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight;
//                 calcWidth = (domElmWidth - ((adjustHeight * 2.5)));
//                 calcHeight = (domElmHeight - ((adjustWidth * 2.5)));
//                 this.setCSS(this.photoContainer, {
//                     height: calcHeight + 'px',
//                     width: calcWidth + 'px',
//                     position: 'fixed',
//                     top: (adjustWidth * 1.25) + 'px',
//                     left: (adjustHeight * 1.25) + 'px'
//                 });
//                 this.setCSS(this.photoAlbum, {
//                     width: domElmWidth + 'px',
//                     height: domElmHeight + 'px',
//                     top: 0,
//                     left: 0,
//                     zIndex: 100005
//                 })
//             }
//         },
//         photoAlbumCreat: function () {
//             var thumbnailLength, thumbnailWraper = this.navContainer, thumbnailImageLIst = this.photoImageList, photoShadow = this.photoContainer, countAll = this.countAll, currentCount = this.currentCount;
//             if (thumbnailImageLIst && thumbnailWraper) {
//                 thumbnailLength = thumbnailImageLIst.length;
//                 thumbnailWraper.innerHTML = "";
//                 for (var i = 0; i < thumbnailLength; i++) {
//                     thumbnailWraper.innerHTML += "<li data-index=" + i + "><div class=box-shadow></div><img src=" + thumbnailImageLIst[i] + "></li>"
//                 }
//                 ;
//                 countAll.innerHTML = thumbnailLength;
//                 currentCount.innerHTML = 1
//             }
//             ;
//             thumbnailWraper.getElementsByTagName('li')[0].className = this.currentClass;
//             this.photoName.innerHTML = this.photoImageName;
//             this.photoShadow.innerHTML = "<img alt='' class='shadow-image' src=" + thumbnailImageLIst[0] + ">";
//         },
//         photoAlbumControl: function () {
//             var ctrlButtonLeft, ctrlButtonRight, thumbnailImageLIst, thumbnailChild, thumbnailLength, calcCount = 0, index, picture, pictureURL, applyObj = this;
//             if (this.photoCtrlL && this.photoCtrlR && this.navContainer && this.photoContainer) {
//                 picture = this.photoContainer.getElementsByTagName('img')[0], ctrlButtonLeft = this.photoCtrlL, ctrlButtonRight = this.photoCtrlR, thumbnailImageLIst = this.navContainer, thumbnailChild = thumbnailImageLIst.getElementsByTagName('li'), thumbnailLength = thumbnailChild.length;
//                 ctrlButtonLeft.onclick = function () {//点击按钮，实现上一张操作
//                     calcCount--;
//                     if (calcCount >= thumbnailLength || calcCount <= -1) {
//                         calcCount = thumbnailLength - 1
//                     }
//                     ;
//                     for (var i = 0; i < thumbnailLength; i += 1) {
//                         thumbnailChild[i].className = ""
//                     }
//                     ;
//                     applyObj.photoShadow.innerHTML = "";
//                     thumbnailChild[calcCount].className = applyObj.currentClass;
//                     applyObj.currentCount.innerHTML = (parseInt(calcCount) + 1);
//                     applyObj.photoShadow.innerHTML = "<img alt='undefined' class='shadow-image' style='opacity:0' src=" + thumbnailChild[calcCount].getElementsByTagName('img')[0].src + ">";
//                     $('.shadow-image').animate({opacity: 1}, 320)
//                 };
//                 ctrlButtonRight.onclick = function () {//点击按钮，实现下一张操作
//                     calcCount++;
//                     if (calcCount >= thumbnailLength || calcCount <= 0) {
//                         calcCount = 0
//                     }
//                     for (var i = 0; i < thumbnailLength; i += 1) {
//                         thumbnailChild[i].className = ""
//                     }
//                     ;
//                     applyObj.photoShadow.innerHTML = "";
//                     thumbnailChild[calcCount].className = applyObj.currentClass;
//                     applyObj.currentCount.innerHTML = (parseInt(calcCount) + 1);
//                     applyObj.photoShadow.innerHTML = "<img alt='undefined' class='shadow-image' style='opacity:0' src=" + thumbnailChild[calcCount].getElementsByTagName('img')[0].src + ">";
//                     $('.shadow-image').animate({opacity: 1}, 320)
//                 };
//                 for (var i = 0; i < thumbnailLength; i++) {//点击缩略图，实现全局操作
//                     thumbnailChild[i].onclick = function () {
//                         calcCount = this.getAttribute('data-index');
//                         for (var i = 0; i < thumbnailLength; i++) {
//                             thumbnailChild[i].className = ""
//                         }
//                         ;
//                         applyObj.photoShadow.innerHTML = "";
//                         thumbnailChild[calcCount].className = applyObj.currentClass;
//                         applyObj.currentCount.innerHTML = (parseInt(calcCount) + 1);
//                         applyObj.photoShadow.innerHTML = "<img alt='undefined' class='shadow-image' style='opacity:0' src=" + thumbnailChild[calcCount].getElementsByTagName('img')[0].src + ">";
//                         $('.shadow-image').animate({opacity: 1}, 320)
//                     }
//                 }
//             }
//         },
//         photoAuto: function () {
//             var applyObj = this;//缩放事件
//             window.onresize = function () {
//                 applyObj.photoAlbumResize()
//             }
//         },
//     }
// })($);
//
//
// //类型检测
// var is = {
//     //检测所有
//     isAll: function (parem) {
//         return typeof parem;
//     },
//     //检测函数
//     Function: function (fnName) {
//         return typeof fnName === 'function';
//     },
//     //检测对象
//     Objects: function (obj) {
//         return typeof obj === 'object';
//     },
//     //检测数组
//     Arrays: function (arrName) {
//         return arrName.constructor.name === 'Array';
//     },
//     //检测数字
//     Numbers: function (number) {
//         return typeof number === 'number';
//     },
//     //检测字符串
//     Strings: function (string) {
//         return typeof string === 'string';
//     },
//     //检测undefined
//     Undefined: function (parem) {
//         return typeof parem === 'undefined';
//     }
// }
// function appHTML(target, doc, length) {
//     base.appendHtml(target, doc, length);
// }
// //addCur
// function addCur(obj, className) {
//     base.addCur(obj, className);
// }
// function JumpURL(c) {
//     base.skipUrl(c);
// };
//
//
// /*=======公共状态栏-登录项===========*/
// $(function () {
//     var drapmenu = $('.use-layout');
//     var drophover = 'use-layout-hover';
//     var dropactive = 'use-arrow-up';
//     drapmenu.hover(function () {
//         $(this).addClass(drophover);
//         $(this).children('.use-option').show();
//         $(this).children('.use-arrow').addClass(dropactive)
//     }, function () {
//         $(this).removeClass(drophover);
//         $(this).children('.use-option').hide();
//         $(this).children('.use-arrow').removeClass(dropactive)
//     });
//     ///////////
//     var droparea = $('#province-region');
//     var droparea2 = $('#area-region');
//     var length = droparea.length;
//     if (droparea && dropactive) {
//         $(document).click(function () {
//             droparea.hide() && droparea2.hide();
//         });
//     }
//
//     loadImg();
// });
//
// function loadImg($d) {
//     if (!$d) {
//         $d = $(document);
//     }
//     //图片延迟加载
//     $d.find("img.lazy").lazyload({
//         effect: "fadeIn",
//         failure_limit: 5
//     });
// }