class CommentsController < ApplicationController
    before_action :authenticate_user!
    
        def create
            print "\n\n XXXXXXXXXXXXXX\n\n\n"
            print current_user.id
            print "\n\n XXXXXXXXXXXXXX\n\n\n"
            print params[:article_id]
            print "\n\n XXXXXXXXXXXXXX\n\n\n"
            print comment_params[:content]
            print "\n\n XXXXXXXXXXXXXX\n\n\n"

                @article = Article.find(params[:article_id])
                @comment = Comment.new(
                    user_id: current_user.id,
                    article_id: params[:article_id],
                    content: params[:comment][:content]
                  )
                  @comment.save
                #@comment = @article.comment.create(comment_params)
                redirect_to article_path(@article)

        end

      def new

        print  "KKKKKKKKKKKKK"
        print params[:comment][:picture_id]

        @comment = Comment.new(
          user_id: current_user.id,
          picture_id: params[:comment][:picture_id],
          content: params[:comment][:content]
        )
        respond_to do |format|
          if @comment.save!
            format.html { redirect_to picture_path(@comment.picture.id) }
          end
        end
      end
      private
        def comment_params
            params.require(:comment).permit(:content,:article_id )
        end
    
end