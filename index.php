  <?php require "config.php"; ?>

  <?php include "templates/head.tpl"; ?>

  <?php include "templates/header.tpl"; ?>

  <?php include "templates/nav.tpl"; ?>

  <?php Navigation::Nav(); Navigation::Secure(); DbBroker::Open(); ?>

  <?php include "templates/footer.tpl"; ?>