class JsonEmailerController < ApplicationController
    def create
        JsonMailer.send_email(params[:recipients], params[:from], params[:subject], Parser.new.parse_markdown((params[:body]))).deliver
        render nothing: true
    end

end
