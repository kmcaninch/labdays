class FullRunsController < ApplicationController
    def index
        @full_runs = FullRun.all
    end
end
