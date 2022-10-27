class PagesController < ApplicationController 
    def index
        @noticias = Noticia.all
    end 

    def form
        @noticia = Noticia.new
    end

    def create
        datos_noticias = params.requiere(:noticia).perimit(:encabezado, :cuerpo, :tipo, :link)
        @noticia = Noticia.new(datos_noticias)
        if @noticia.save
            redirect_to pages_index_path
        else
            render :new
        end

    end
end