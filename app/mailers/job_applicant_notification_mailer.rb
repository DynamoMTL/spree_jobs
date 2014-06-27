class JobApplicantNotificationMailer < ActionMailer::Base
   def new_applicant(applicant)
      require 'open-uri'

      @applicant  = applicant
      recipient   = ::Spree::Config.spree_jobs_email
      sender      = 'no-reply-' + recipient
      subject     = "New Job Application for #{applicant.job_opening.job_location.address}, #{applicant.job_opening.job_location.city}"

      attachments[applicant.resume_file_name] = open(applicant.resume.url, 'rb'){|f| f.read}
      attachments[applicant.cover_file_name] = open(applicant.cover.url, 'rb'){|f| f.read}

      mail(to: recipient, from: sender, subject: subject)
  end
end
