//= require ./jquery/_base
//= require ./jquery/jquery.tmpl
//= require ./bootstrap
//= require_self

/* FIXED：IE 上显示两个及以上 modal 时，爆 stack overflow */
if (navigator.userAgent.match(/msie/i)) {
  jQuery.fn.modal.Constructor.prototype.enforceFocus = $.noop;
}

