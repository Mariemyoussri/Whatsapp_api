class ArticlesController < ApplicationController

  def create
    byebug
    data = Article.search_title(params[:query])
    # render_success('search', data.to_j, :ok)
    print("\n\n\n#{data}\n\n\n")
    render(data)
  end

  private

  def render_success(key, data, status_code)
    render(
      json: {
        success: true,
        key.to_sym => data
      },
      status: status_code
    )
  end
end