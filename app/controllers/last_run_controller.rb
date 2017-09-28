class LastRunController < ApplicationController
    def index
        @last_run_parent = RunSummary.where(application:'Operations', environment:'beta').last
        @parent_id = @last_run_parent.id

        @run_details = RunDetail.where(run_summary_id: @parent_id, status: 'failed').find_each
        @full_run_parent = RunSummary.find_by id: @parent_id
        @run_family = RunSummary.where(full_run_id: @last_run_parent.full_run_id).find_each
    end
end
