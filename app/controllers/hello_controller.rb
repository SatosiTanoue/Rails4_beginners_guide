class HelloController < ApplicationController
	def index
		@title ="index"
		@header_content ="content"
		@msg =  "TITLE"
		@hello = Helo.all
	end
	def show 
		@title ="サンプルレイアウト"
		@header_content="データの表示"
		@msg = "指定のIDのデータを表示します．"
		id= params['id']
		if id.nil? then
			@hello = Helo.find(1)
		else  
			@hello = Helo.find(params['id'])
			# @hello = Helo.find(1)
		end
	end

	def new
		@title = "サンプルレイアウト"
		@header_content ="データの追加"
		@msg ="データの追加を行う"
	end

	def create
		title = params['title']
		content = params['content']
		obj=Helo.new(title:title,content:content)
		obj.save
		redirect_to '/hello/index'
	end

end
