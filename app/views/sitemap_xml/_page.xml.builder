xml.url do
  xml.loc "#{@host}#{page.path}"
  xml.lastmod page.updated_at.strftime('%Y-%m-%d')
  xml.changefreq page.change_frequency
  xml.priority page.priority
end
page.children.for_sitemap_xml.each do |page|
  xml << (render :partial => 'page', :locals => { :page => page })
end