class ItemsController < ApplicationController
  before_filter :get_patient

  # GET /items/new
  def new
    @item = @patient.items.build
    it = ItemType.find_by_name(params[:itemtype])
    if it
      logger.debug "MKLog: ItemType zum Erstellen: #{it.description}."
      @item.itemtype = it
    else
      logger.debug "MKLog: Generischen ItemType erstellen."
    end
  end

  # GET /items/1/edit
  def edit
    @item = Item.find(params[:id])
  end

  # POST /items
  def create
    @item = @patient.items.build(params[:item])
    if @item.save
      redirect_to patient_path(@patient), notice: "Item was successfully created."
    else
      render action: "new"
    end
  end

  # PUT /items/1
  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      redirect_to patient_path(@patient), notice: "Item was successfully updated."
    else
      render action: "edit"
    end
  end

  # DELETE /items/1
  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to patient_path(@patient), notice: "Item successfully deleted."
  end

  private

  def get_patient
    @patient = Patient.find(params[:patient_id])
  end
end
