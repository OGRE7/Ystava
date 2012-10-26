class UtilisateursController < ApplicationController
  # GET /utilisateurs
  # GET /utilisateurs.json
  def index
    @utilisateurs = Utilisateur.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @utilisateurs }
    end
  end

  # GET /utilisateurs/1
  # GET /utilisateurs/1.json
  def show
    @utilisateur = Utilisateur.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @utilisateur }
    end
  end

  # GET /utilisateurs/new
  # GET /utilisateurs/new.json
  def new
    @utilisateur = Utilisateur.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @utilisateur }
    end
  end

  # GET /utilisateurs/1/edit
  def edit
    @utilisateur = Utilisateur.find(params[:id])
  end

  # POST /utilisateurs
  # POST /utilisateurs.json
  def create
    @utilisateur = Utilisateur.new(params[:utilisateur])

    respond_to do |format|
      if @utilisateur.save
        format.html { redirect_to utilisateurs_url, notice: "#{@utilisateur.name} est maintenant dans la liste." }
        format.json { render json: utilisateurs_path, status: :created, location: @utilisateur }
      else
        format.html { render action: "new" }
        format.json { render json: @utilisateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /utilisateurs/1
  # PUT /utilisateurs/1.json
  def update
    @utilisateur = Utilisateur.find(params[:id])

    respond_to do |format|
      if @utilisateur.update_attributes(params[:utilisateur])
        format.html { redirect_to utilisateurs_url, notice: "Modifications de #{@utilisateur.name} prisent en compte." }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @utilisateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utilisateurs/1
  # DELETE /utilisateurs/1.json
  def destroy
    @utilisateur = Utilisateur.find(params[:id])
    nom = @utilisateur.name
    @utilisateur.destroy

    respond_to do |format|
      format.html { redirect_to utilisateurs_url, notice: "#{nom} n'est plus." }
      format.json { head :no_content }
    end
  end
end
