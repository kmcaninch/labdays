class EnvironmentController < ApplicationController
    def index
        @last_run_beta = RunSummary.where(application:'Operations', environment:'beta').last
    end
end
