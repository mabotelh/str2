class JobsController < InheritedResources::Base
  before_filter :authenticate_user!, except:  [:index, :show]

  protected
    def collection
      @jobs = Job.search(params)
    end
end
