class Notifier < ActionMailer::Base
  default from: "ticektee@example.com"

	def comment_updated(comment, user)
		@comment = comment
		@user = user
		mail(:to => user.email, :subject => "[ticketee] #{comment.ticket.project.name} - #{comment.ticket.title}", :from => "testerticketee+#{@comment.project.id}+#{@comment.ticket_id}@gmail.com").deliver
	end
end
