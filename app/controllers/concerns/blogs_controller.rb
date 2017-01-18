class BlogsController < ApplicationController

  before_action :set_blog, only: [:edit, :update, :show, :destroy]

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def edit
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

  def update
    if @blog.update(blog_params)
      flash[:notice] = "Blog was successfully updated"
      redirect_to blog_path(@blog)
    else
      render 'update'
    end
  end

  def show
  end

  def destroy
    @blog.destroy
    flash[:notice] = "Blog was successfully deleted"
    redirect_to blogs_path
  end

  private
    def set_blog
      @blog = Blog.find(params[:id])
    end

    def blog_params
      params.require(:blog).permit(:title, :description, :body)
    end

end
