module PeriodsHelper
  def return_ref(url)

    if /^http\:\/\//.match(url)
      url
    else
      'http://'+request.host_with_port+'/'+url
    end

  end
end
