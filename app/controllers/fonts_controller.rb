class FontsController < ApplicationController
  def index
    @browser = user_agent.family
    @version = user_agent.version.to_s
  end

  private
    def user_agent
      UserAgentParser.parse request.user_agent
    end
end
