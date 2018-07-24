<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
  <title>CSS3_trees</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="../others/tcu_trees/css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="../others/tcu_trees/js/modernizr-1.5.min.js"></script>
</head>

<body>
  <div id="main">
    <header>
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">CCS3<span class="logo_colour">_trees</span></a></h1>
          <h2>Simple. Contemporary. Website Template.</h2>
        </div>
      </div>
      <nav>
        <div id="menu_container">
          <ul class="sf-menu" id="nav">
            <li><a href="index">Home</a></li>
            <li><a href="examples.html">发布订单</a></li>
            <li><a href="#">我的订单</a>
              <ul>
                <li><a href="#">进行中的订单</a></li>
                <%--<li><a href="#">Drop Down Two</a>--%>
                <%--<ul>--%>
                <%--<li><a href="#">Sub Drop Down One</a></li>--%>
                <%--<li><a href="#">Sub Drop Down Two</a></li>--%>
                <%--<li><a href="#">Sub Drop Down Three</a></li>--%>
                <%--<li><a href="#">Sub Drop Down Four</a></li>--%>
                <%--<li><a href="#">Sub Drop Down Five</a></li>--%>
                <%--</ul>--%>
                <%--</li>--%>
                <li><a href="#">已完成的订单</a></li>
                <li><a href="#">其他订单</a></li>
                <%--<li><a href="#">Drop Down Five</a></li>--%>
              </ul>
            </li>
            <li><a href="page.html">A Page</a></li>
            <li><a href="another_page.html">Another Page</a></li>

            <li><a href="contact.php">Contact Us</a></li>
          </ul>
        </div>
      </nav>
    </header>
	<div class="inner_copyright">Collect from <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a></div>
    <div id="site_content">
      <div id="sidebar_container">
        <div class="sidebar">
          <h3>Latest News</h3>
          <h4>New Website Launched</h4>
          <h5>January 1st, 2013</h5>
          <p>2013 sees the redesign of our website. <a href="#">Read more</a></p>
        </div>
        <div class="sidebar">
          <h3>Useful Links</h3>
          <ul>
            <li><a href="#">First Link</a></li>
            <li><a href="#">Another Link</a></li>
            <li><a href="#">And Another</a></li>
            <li><a href="#">Last One</a></li>
          </ul>
        </div>
        <div class="sidebar">
          <h3>More Useful Links</h3>
          <ul>
            <li><a href="#">First Link</a></li>
            <li><a href="#">Another Link</a></li>
            <li><a href="#">And Another</a></li>
            <li><a href="#">Last One</a></li>
          </ul>
        </div>
      </div>
      <div class="content">
        <h1>Welcome to the CSS3_trees template</h1>
        <p>This simple, fixed width website template is released under a Creative Commons Attribution 3.0 Licence. This means you are free to download and use it for personal and commercial projects. However, you <strong>must leave the 'design from css3templates.co.uk' link in the footer of the template</strong>.</p>
        <p>This template is written entirely in <strong>HTML5</strong> and <strong>CSS3</strong>.</p>
        <p>You can view more free CSS3 web templates <a href="http://www.cssmoban.com">here</a>.</p>
        <p>This template is a fully documented 5 page website, with an <a href="examples.html">examples</a> page that gives examples of all the styles available with this design. There is also a working PHP contact form on the contact page.</p>
        <h2>Browser Compatibility</h2>
        <p>This template has been tested in the following browsers:</p>
        <ul>
          <li>Internet Explorer 8</li>
          <li>Internet Explorer 7</li>
          <li>FireFox 10</li>
          <li>Google Chrome 17</li>
          <li>Safari 4</li>
        </ul>
      </div>
    </div>
    <div id="scroll">
      <a title="Scroll to the top" class="top" href="#"><img src="../others/tcu_trees/images/top.png" alt="top" /></a>
    </div>
    <footer>
      <p><img src="../others/tcu_trees/images/twitter.png" alt="twitter" />&nbsp;<img src="../others/tcu_trees/images/facebook.png" alt="facebook" />&nbsp;<img src="../others/tcu_trees/images/rss.png" alt="rss" /></p>
      <p><a href="index.html">Home</a> | <a href="examples.html">Examples</a> | <a href="page.html">A Page</a> | <a href="another_page.html">Another Page</a> | <a href="contact.php">Contact Us</a></p>
      <p>Copyright &copy; CSS3_trees | <a href="http://www.heartinternet.co.uk/web-hosting/">Web hosting</a> | <a href="http://www.cssmoban.com">模板之家</a></p>
    </footer>
  </div>
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="../others/tcu_trees/js/jquery.js"></script>
  <script type="text/javascript" src=".../others/tcu_trees/js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="../others/tcu_trees/js/jquery.sooperfish.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $('ul.sf-menu').sooperfish();
      $('.top').click(function() {$('html, body').animate({scrollTop:0}, 'fast'); return false;});
    });
  </script>
</body>
</html>
