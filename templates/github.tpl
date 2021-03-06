%# ---------------------------------- WARNING ----------------------------------
%#       Do NOT Modify this template, create a new one for customization
%#                It will get overwritten upon update
%# -----------------------------------------------------------------------------
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8'/>
    <title>{{filename}}—{{dirname}}</title>
    <link rel="stylesheet" type="text/css" href="/public/github.min.css" />
  </head>
  <body>
    <div class="container">
      <div id="markup">
        <article id="content" class="markdown-body" data-timestamp="{{timestamp}}">
          {{!html_part}}
        </article>
      </div>
    </div>
  </body>
  <script type="text/x-omnimarkup-config">
    window.App.Options = {
      "buffer_id": {{buffer_id}},
      "ajax_polling_interval": {{ajax_polling_interval}},
      "mathjax_enabled": {{'true' if mathjax_enabled else 'false'}}
    };
  </script>
  <script type="text/javascript" src="/public/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" src="/public/app.min.js"></script>
  %if mathjax_enabled:
  <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
        tex2jax: {
          inlineMath: [ ['$','$'], ["\\(","\\)"] ],
          displayMath: [ ['$$', '$$'], ["\\[", "\\]"] ],
          processEscapes: true
        },
        TeX: {
          equationNumbers: {
            autoNumber: 'AMS'
          }
        },
        "HTML-CSS": {
          imageFont: null
        }
      });
  </script>
  <script type="text/javascript" src="/public/mathjax/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
  %end
</html>
