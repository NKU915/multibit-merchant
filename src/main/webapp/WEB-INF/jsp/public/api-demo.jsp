<%@include file="/WEB-INF/jspf/taglibs.jspf" %>
<!DOCTYPE html>
<html>
<head>
  <%@include file="/WEB-INF/jspf/head.jspf" %>
</head>
<body>
<div id="switcher"></div>
<div><a href="<c:url value="/index.html" />">Home</a> | <a href="<c:url value="/admin.html" />">Admin</a></div>
<div id="tabs">
  <ul>
    <li><a href="#tab-1">Alerts</a></li>
    <li><a href="#tab-2">Time</a></li>
    <li><a href="#tab-3">Bitcoin</a></li>
  </ul>

  <div id="tab-1">
    <p>The Alert API provides notification text that a customer should pay attention to.</p>
    <table>
      <colgroup>
        <col span="1" style="width:10%"/>
        <col span="1" style="width:40%"/>
        <col span="1" style="width:40%"/>
        <col span="1" style="width:10%"/>
      </colgroup>
      <tr>
        <td>Example</td>
        <td>Description</td>
        <td>Code</td>
        <td>Output</td>
      </tr>
      <tr>
        <td><a href="http://localhost:8080/mbm/api/v1/alert/subscribe">Subscribe to 'alert'</a></td>
        <td>TODO require demo</td>
        <td></td>
        <td></td>
      </tr>
    </table>
    <p></p>
  </div>
  <div id="tab-2">
    <p>The Time API provides access to various server time facilities.</p>
    <table>
      <colgroup>
        <col span="1" style="width:10%"/>
        <col span="1" style="width:40%"/>
        <col span="1" style="width:40%"/>
        <col span="1" style="width:10%"/>
      </colgroup>
      <tr>
        <td>Example</td>
        <td>Description</td>
        <td>Code</td>
        <td>Output</td>
      </tr>
      <tr>
        <td><a href="http://localhost:8080/mbm/api/v1/time/now">Now UTC</a></td>
        <td>Echo the current server time in UTC as a plain string</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td><a id="json-time" href="#">Update time</a></td>
        <td>Echo the current server time as part of a JSON response</td>
        <td><code>$("#json-time").click($.getJSON(
          "http://localhost:8080/mbm/api/v1/time/extended",
          null,
          function (data) {
          $("#json-time-output").html("yyyy-MM-dd="+data.year+"-"+data.month+"-"+data.day);
          })
          );</code>
        </td>
        <td id="json-time-output"></td>
      </tr>
    </table>

    <p>
    </p>
  </div>
  <div id="tab-3">
    <p>The Bitcoin API provides access to various Bitcoin related facilities.</p>
    <table>
      <colgroup>
        <col span="1" style="width:10%"/>
        <col span="1" style="width:40%"/>
        <col span="1" style="width:40%"/>
        <col span="1" style="width:10%"/>
      </colgroup>
      <tr>
        <td>Example</td>
        <td>Description</td>
        <td>Code</td>
        <td>Output</td>
      </tr>
      <tr>
        <td><a id="bitcoin-monitor" href="#">Request address</a></td>
        <td>Request a Bitcoin address from the MBM pool. Will respond with an address if successful.</td>
        <td><code>$("#bitcoin-monitor").bind("click", function(event) {
          $.post('/mbm/api/v1/bitcoin/monitor/1abcdefgh',
          function(data) {
          $('#bitcoin-monitor-output').html(data);
          });
          });
        </code>
        </td>
        <td id="bitcoin-monitor-output"></td>
      </tr>
      <tr>
        <td><a id="bitcoin-swatch" href="#">Swatch</a></td>
        <td>Create a Bitcoin swatch.
        </td>
        <td><code></code>
        </td>
        <td id="bitcoin-swatch-output"><img src="<c:url value="/api/v1/bitcoin/swatch?address=1abcdefg&amount=4.5&label=Example"/>"/></td>
      </tr>
    </table>

    <p>
    </p>
  </div>
</div>

<%@include file="/WEB-INF/jspf/cdn-scripts.jspf" %>
<%@include file="/WEB-INF/jspf/mbm-scripts.jspf" %>

<script type="text/javascript" src="<c:url value="/js/mbm/demo-time.js"/>"></script>
<script type="text/javascript" src="<c:url value="/js/mbm/demo-bitcoin.js"/>"></script>
</body>
</html>