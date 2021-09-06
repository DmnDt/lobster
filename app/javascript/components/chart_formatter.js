// import "chartkick/highcharts"

// Code de Thomas qui change l'unité de l'axe des ordonnees des graphs de la show
// exemple: affiche 1M au lieu de 1000000 ou 500k au lieu de 500000

const chartFormatter = () => {
  setTimeout(() => {
    Chartkick.eachChart( function(chart) {
      console.log(chart.options);
      chart.redraw()
      chart.setOptions({
        library: {
          yAxis: {
            labels: {
              formatter: function () {
                var label = this.axis.defaultLabelFormatter.call(this);
                // Use thousands separator for four-digit numbers too
                if (/^[0-9]{4}$/.test(label)) {
                  return Highcharts.numberFormat(this.value, 0);
                }
                return label;
              }
            }
          }

        }
      });
    });
  }, 500);
}
export { chartFormatter };
