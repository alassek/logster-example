class TestController < ApplicationController
  def testing
    respond_to do |format|
      format.html { render 'testing' }
    end
  end
end
