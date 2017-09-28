module StatisticsHelper
  def run_family_by_failures 
        @a = [[@full_run_parent.id, @full_run_parent.failure_count]]
        @run_family.each do |run_family|
            @a << [run_family.id, run_family.failure_count]
        end
        @a.sort
        
        line_chart @a, height: '500px', library: {
            title: {text: 'Graph is a work in progress', x: -20},
            yAxis: {
            allowDecimals: false,
            title: {
                text: 'Failure count'
                }
            },
            xAxis: {
                title: {
                    text: 'Run ID'
                }
            }
    }
  end
end