class PagesController < ApplicationController
  def home
  end

  def about
    @time = Time.now
  end

  def contact
    @members = ["thanh", "dimitri", "germain", "damien", "julien"]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
    raise
  end
end
