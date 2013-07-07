Dir[File.dirname(__FILE__) + '/paramsfile/*.rb'].each do |file|
  require file
end
