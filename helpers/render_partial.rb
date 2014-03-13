module RenderPartial
  def partial(page, options={})
    slim page, options.merge!(:layout => false)
  end
end

helpers RenderPartial