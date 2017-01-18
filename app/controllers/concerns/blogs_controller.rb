class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

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

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    flash[:notice] = "Blog was successfully deleted"
    redirect_to blogs_path
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
