$(document).ready(function() {
    function t() {
        var t = $(window).width();
        768 > t ? $("#filter-items .item").addClass("width-100") : $("#filter-items .item").removeClass("width-100")
    }
    function e() {
        function t() {
            e && clearTimeout(e),
            e = setTimeout(function() {
                var t = 442,
                e = .95;
                jQuery("#cboxOverlay").is(":visible") && ($.colorbox.resize({
                    width: $(window).width() > t + 20 ? t: Math.round($(window).width() * e)
                }), $(".cboxPhoto").css({
                    width: $("#cboxLoadedContent").innerWidth(),
                    height: "auto"
                }), $("#cboxLoadedContent").height($(".cboxPhoto").height()), $.colorbox.resize())
            },
            300)
        }
        $(".colorbox-button").colorbox({
            rel: "colorbox-button",
            maxWidth: "95%",
            maxHeight: "95%"
        });
        var e;
        jQuery(window).resize(t),
        window.addEventListener("orientationchange", t, !1)
    }
    var i = $(window);
    $('section[data-type="background"]').each(function() {
        var t = $(this);
        $(window).scroll(function() {
            var e = -(i.scrollTop() / t.data("speed")),
            o = "50% " + e + "px";
            t.css({
                backgroundPosition: o
            })
        })
    }),
    jQuery(window).resize(function() {});
    var o = "down";
    jQuery(window).bind("scroll",
    function() {
        var t = jQuery(window).scrollTop();
        t > jQuery("#portfolio").offset().top - 60 && "down" == o ? (o = "up", jQuery("#nav-bar").stop().animate({
            top: "0"
        },
        300)) : t < jQuery("#portfolio").offset().top - 60 && "up" == o && (o = "down", jQuery("#nav-bar").stop().animate({
            top: "-75px"
        },
        300)),
        jQuery("section").each(function() {
            if (t > jQuery(this).offset().top - 60) {
                var e = jQuery(this).attr("id");
                $("#top-navigation ul li").each(function() {
                    e == jQuery(this).find("a").attr("href").replace("#", "") && jQuery(this).not(".active") && ($("#top-navigation ul li").removeClass("active"), jQuery(this).addClass("active"))
                })
            }
        })
    }),
    $(".feature-1").waypoint(function() {
        $(".feature-1 .feature-img").addClass("animate"),
        $(".feature-1 .feature-content").addClass("animate")
    },
    {
        triggerOnce: !0,
        offset: function() {
            return $(window).height() - $(this).outerHeight() + 200
        }
    }),
    $(".feature-2").waypoint(function() {
        $(".feature-2 .feature-img").addClass("animate"),
        $(".feature-2 .feature-content").addClass("animate")
    },
    {
        triggerOnce: !0,
        offset: function() {
            return $(window).height() - $(this).outerHeight() + 200
        }
    }),
    $(".heronav").onePageNav({
        filter: ":not(.external)",
        scrollOffset: 80
    }),
    $("#fixed-top-navigation").onePageNav({
        filter: ":not(.external)",
        scrollOffset: 80
    }),
    $(".showcase a[href*=#]:not([href=#])").click(function() {
        if (location.pathname.replace(/^\//, "") == this.pathname.replace(/^\//, "") && location.hostname == this.hostname) {
            var t = $(this.hash);
            if (t = t.length ? t: $("[name=" + this.hash.slice(1) + "]"), t.length) return $("html,body").animate({
                scrollTop: t.offset().top
            },
            800),
            !1
        }
    });
    var a = $("#filter-items");
    a.imagesLoaded(function() {
        a.isotope({}),
        $("#filters a").click(function() {
            var t = $(this).attr("data-filter");
            return a.isotope({
                filter: t
            }),
            $("#filters a").removeClass("active"),
            $(this).addClass("active"),
            !1
        }),
        $("#e1").change(function() {
            var t = $(this).find(":selected").val();
            return a.isotope({
                filter: t
            }),
            !1
        })
    }),
    t(),
    jQuery(window).resize(function() {
        t()
    }),
    e(),
    $(".projects").click(function() {
        var t = $(this).attr("data-slide");
        return $("#project-slide-" + t).addClass("animated fadeInUpBig").show(),
        !1
    }),
    $(".sidebar-collapse > i").click(function() {
        $("#mobile-menu").slideToggle(200, "linear").toggleClass("collapse")
    })
});