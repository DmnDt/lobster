import "chartkick/highcharts"

const chartFormatter = () => {
  setTimeout(() => {
    Chartkick.eachChart( function(chart) {
      console.log(chart);
      chart.setOptions({
        yAxis: {
          labels: {
            format: '€{text}',
            formatter: function () {
              var label = this.axis.defaultLabelFormatter.call(this);
              console.log(label);
              // Use thousands separator for four-digit numbers too
              if (/^[0-9]{4}$/.test(label)) {
                return Highcharts.numberFormat(this.value, 0);
              }
              return label;
            }
          }
        }
      });
    });
  }, 500);
}
export { chartFormatter };
