class CommentsController < ApplicationController
    before_action :authenticate_user!

  def create
    @publication = Publication.find(params[:publication_id])
    @comment = @publication.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @publication, notice: "Comentario agregado exitosamente."
    else
      redirect_to @publication, alert: "Hubo un error al agregar el comentario."
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
