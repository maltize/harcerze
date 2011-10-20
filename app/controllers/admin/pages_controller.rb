class Admin::PagesController < Admin::BaseController

  def index
    @pages = Page.root.self_and_descendants
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def edit
    @page = Page.find(params[:id])
  end

  def create
    @page = Page.new(params[:page])

    if @page.save
      redirect_to(admin_page_path(@page), :notice => 'Page was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @page = Page.find(params[:id])

    if @page.update_attributes(params[:page])
      redirect_to(admin_page_path(@page), :notice => 'Page was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy

    redirect_to(admin_pages_path)
  end

  def move_up
    @page = Page.find(params[:id])
    @page.move_left if @page.left_sibling
    redirect_to(admin_pages_path)
  end

  def move_down
    @page = Page.find(params[:id])
    @page.move_right if @page.right_sibling
    redirect_to(admin_pages_path)
  end

end
