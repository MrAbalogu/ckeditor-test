module YoutubesHelper

	def embed(link)
	    youtube_id = link.split("=").last
	    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  	end
  	
end
