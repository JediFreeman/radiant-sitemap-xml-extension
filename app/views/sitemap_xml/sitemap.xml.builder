xml.instruct!
xml.urlset(:xmlns => "http://www.sitemaps.org/schemas/sitemap/0.9") do
  if @homepage
    xml << (render :partial => 'page', :locals => { :page => @homepage })
  end
end
