class CompaniesController < ApplicationController
  def new
    @company = current_user.build_company
  end

  def edit; end

  def create
    @company = current_user.build_company(company_params)

    if @company.save
      flash[:notice] = 'Company created successfully'
      redirect_to root_path
    else
      flash[:error] = 'Company not created'
      render :new
    end
  end

  def update; end

  private

  def company_params
    params.require(:company).permit(:name, :url)
  end
end
