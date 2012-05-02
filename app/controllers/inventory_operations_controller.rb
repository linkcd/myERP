class InventoryOperationsController < ApplicationController
  # GET /inventory_operations
  # GET /inventory_operations.json
  def index
    @inventory_operations = InventoryOperation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inventory_operations }
    end
  end

  # GET /inventory_operations/1
  # GET /inventory_operations/1.json
  def show
    @inventory_operation = InventoryOperation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inventory_operation }
    end
  end

  # GET /inventory_operations/new
  # GET /inventory_operations/new.json
  def new
    @inventory_operation = InventoryOperation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inventory_operation }
    end
  end

  # GET /inventory_operations/1/edit
  def edit
    @inventory_operation = InventoryOperation.find(params[:id])
  end

  # POST /inventory_operations
  # POST /inventory_operations.json
  def create
    @inventory_operation = InventoryOperation.new(params[:inventory_operation])

    respond_to do |format|
      if @inventory_operation.save
        format.html { redirect_to @inventory_operation, notice: 'Inventory operation was successfully created.' }
        format.json { render json: @inventory_operation, status: :created, location: @inventory_operation }
      else
        format.html { render action: "new" }
        format.json { render json: @inventory_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inventory_operations/1
  # PUT /inventory_operations/1.json
  def update
    @inventory_operation = InventoryOperation.find(params[:id])

    respond_to do |format|
      if @inventory_operation.update_attributes(params[:inventory_operation])
        format.html { redirect_to @inventory_operation, notice: 'Inventory operation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inventory_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_operations/1
  # DELETE /inventory_operations/1.json
  def destroy
    @inventory_operation = InventoryOperation.find(params[:id])
    @inventory_operation.destroy

    respond_to do |format|
      format.html { redirect_to inventory_operations_url }
      format.json { head :no_content }
    end
  end
end
