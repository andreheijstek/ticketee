class AttachmentsController < ApplicationController

  skip_after_action :verify_authorized, only: [:new]

  def show
    attachment = Attachment.find(params[:id])
    authorize attachment, :show?
    send_file attachment.file.path, disposition: :inline
  end

  def new
    @index = params[:index].to_i
    puts "\n\n>>> @index = #{@index}"
    @ticket = Ticket.new
    puts ">>> @ticket = #{@ticket.inspect}"
    @ticket.attachments.build
    puts ">>> @ticket.attachments.build was just executed"
    render layout: false
  end
end
