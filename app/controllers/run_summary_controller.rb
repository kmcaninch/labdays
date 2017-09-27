class RunSummaryController < ApplicationController
    def index
        @run_summaries = RunSummary.all
    end
end
