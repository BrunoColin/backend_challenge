// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.


import $ from 'jquery';
global.$ = jQuery;

$(function() {
    $("#products th a, #products .pagination a").live("click", function() {
      $.getScript(this.href);
      return false;
    });
    $("#products_search input").keyup(function() {
      $.get($("#products_search").attr("action"), $("#products_search").serialize(), null, "script");
      return false;
    });
  });