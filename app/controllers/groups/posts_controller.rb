class Groups::PostsController < ApplicationController
	before_action :find_traveller
	before_action :find_group
	before_action :find_post, only: [:show_comments, :new_comment]

	def show
		puts params[:group_id]
		puts @group.posts.map(&:description)
		puts Post.first.user.name
	end

	def new
		post = Post.create(description: params[:description], group: @group, user_id: @current_traveller.id)
		redirect_to "/groups/#{@group.id}/posts" and return
	end

	def show_comments

	end

	def new_comment
		comment = Comment.create(description: params[:description], post: @post, user_id: @current_traveller.id)
		redirect_to "/groups/#{@group.id}/posts/#{@post.id}" and return
	end
end
