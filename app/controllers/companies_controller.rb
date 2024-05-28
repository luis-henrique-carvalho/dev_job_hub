class CompaniesController < ApplicationController
  def new
    @company = current_user.build_company
  end

  def edit
    @company = current_user.company
  end

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

  def update
    @company = current_user.company
    if @company.update(company_params)
      flash[:notice] = 'Company updated successfully'
      redirect_to root_path
    else
      flash[:error] = 'Company not updated'
      render :edit
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :url)
  end
end
