{% if theme.tencent_analytics_sid && theme.tencent_analytics_cid %}
  <script type="text/javascript">
    var _mtac = {"senseQuery":1};
  	(function() {
  		var mta = document.createElement("script");
  		mta.src = "//pingjs.qq.com/h5/stats.js?v2.0.4";
  		mta.setAttribute("name", "MTAH5");
  		mta.setAttribute("sid", "{{ theme.tencent_analytics_sid }}");
  		mta.setAttribute("cid", "{{ theme.tencent_analytics_cid }}");
  		var s = document.getElementsByTagName("script")[0];
  		s.parentNode.insertBefore(mta, s);
  	})();
  </script>
{% endif %}
