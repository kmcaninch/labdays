class LastRunController < ApplicationController
    def index
        @last_run_parent = RunSummary.last
        @parent_id = @last_run_parent.id

        @run_details = RunDetail.where(run_summary_id: @parent_id, status: 'failed').find_each
    end
end
