class BlogsController < ApplicationController

  def new
    @blog = Blog.new
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:notice] = "Blog was successfully created"
      redirect_to blog_path(@blog)
    else
      render 'new'
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      flash[:notice] = "Blog was successfully updated"
      redirect_to blog_path(@blog)
    else
      render 'update'
    end
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :description, :body)
    end

end
