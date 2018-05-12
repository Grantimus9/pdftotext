class PdfController < ApplicationController

  def retrieve
    case params[:key]
    when ENV.fetch('PDF_ACCESS_KEY')
      url = params[:url]
      text = Yomu.new(url).text
      render plain: text
    else
      render plain: "Invalid Key"
    end
  end

end
