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
end
