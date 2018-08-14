class PdfController < ApplicationController

  def retrieve
    case params[:key]
    when ENV.fetch('PDF_ACCESS_KEY')
      url = params[:url].gsub(" ", "%20")
      text = Henkei.new(url).text
      render plain: text
    else
      render plain: "Invalid Key"
    end
  end

end
