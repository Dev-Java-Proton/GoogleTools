<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>google tools</title>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
  google.charts.load("current", {packages:["timeline"]});
  google.charts.setOnLoadCallback(drawChart);
  function drawChart() {
    var container = document.getElementById('example4.2');
    var chart = new google.visualization.Timeline(container);
    var dataTable = new google.visualization.DataTable();

    dataTable.addColumn({ type: 'string', id: 'Role' });
    dataTable.addColumn({ type: 'string', id: 'Name' });
    dataTable.addColumn({ type: 'date', id: 'Start' });
    dataTable.addColumn({ type: 'date', id: 'End' });
    dataTable.addRows([
      [ 'President Plan', 'George Washington', new Date(2017, 0, 1), new Date(2017, 12, 31) ],
      [ '          Actual ', 'John Adams', new Date(2017, 2, 1), new Date(2017, 2, 24) ],
      [ 'President', 'Thomas Jefferson', new Date(2017, 2, 1), new Date(2017, 2, 24) ]]);

    var options = {
      timeline: { groupByRowLabel: false }
    };

    chart.draw(dataTable, options);
  }
</script>
</head>
<body>
<h1>google tools</h1>
<div id="example4.2" style="height: 200px;"></div>


</body>
</html>