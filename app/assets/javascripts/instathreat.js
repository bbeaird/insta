<head>

<!-- Segment Code Start -->
<script type="text/javascript">
!function(){var analytics=window.analytics=window.analytics||[];if(!analytics.initialize)if(analytics.invoked)window.console&&console.error&&console.error("Segment snippet included twice.");else{analytics.invoked=!0;analytics.methods=["trackSubmit","trackClick","trackLink","trackForm","pageview","identify","reset","group","track","ready","alias","page","once","off","on"];analytics.factory=function(t){return function(){var e=Array.prototype.slice.call(arguments);e.unshift(t);analytics.push(e);return analytics}};for(var t=0;t<analytics.methods.length;t++){var e=analytics.methods[t];analytics[e]=analytics.factory(e)}analytics.load=function(t){var e=document.createElement("script");e.type="text/javascript";e.async=!0;e.src=("https:"===document.location.protocol?"https://":"http://")+"cdn.segment.com/analytics.js/v1/"+t+"/analytics.min.js";var n=document.getElementsByTagName("script")[0];n.parentNode.insertBefore(e,n)};analytics.SNIPPET_VERSION="3.1.0";
analytics.load("WZkmDkZtSmrlEe8sO1b3QI9djuNiPcja");
analytics.page()
}}();
</script>
<!-- Segment Code End -->

</head>

<script src="https://checkout.stripe.com/checkout.js"></script>
<script type="text/javascript">
var handler = StripeCheckout.configure({
  // key: 'pk_test_qHbKom2MmCF9MklDpZOTkxU4',
  key: 'pk_live_LgAYNPo2xEvE2J5Yr7KnjHCL',
  // image: '/img/documentation/checkout/marketplace.png',
  locale: 'auto',
  token: function(token) {
    // Use the token to create the charge with a server-side script.
    // You can access the token ID with `token.id`
    // fbq('track', 'Purchase', {value: '49.00', currency: 'USD'});
    analytics.track('Completed Order');
    console.log('Completed Order');
    console.log('Stripe completion callback!');
  }
});

var form = document.getElementsByTagName('form')[0]
window.instapageFormSubmitSuccess = function(form){
  var name = $('input')[1].value
  var email = $('input')[2].value;
  var phoneNumber = $('input')[3].value;
  analytics.identify(email, {
    name: name,
    email: email,
    phoneNumber: phoneNumber
  })
  analytics.track('Form Submitted');
  console.log('Form Submitted');
  handler.open({
    name: 'InstaThreats',
    description: '100% money back guarantee',
    // description: "Get the money you're owed"
    amount: 4900
  });

  $(window).on('popstate', function() {
    handler.close();
  });
};
</script>