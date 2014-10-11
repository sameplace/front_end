<?php session_name('log'); session_start(); ?>
<?php require "config.php"; ?>

<?php include "templates/head.tpl"; ?>

<?php include "templates/header.tpl"; ?>

<?php include "templates/nav.tpl"; ?>

<?php  Navigation::Secure(); Navigation::Nav(); ?>

<?php include "templates/footer.tpl"; ?>