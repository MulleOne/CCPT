class Contact < MailForm::Base #We'nt inheriting 4rom this class no more < ActiveRecord::Base, This file is created manually
	attribute :name,     :validate => true
	attribute :email,    :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :subject,  :validate => true
	attribute :message,  :validate => true
	attribute :nickname, :captcha => true
	attribute :document,   :attachment => true, :validate => :document_size_validation
	
	def headers 
		{
			:subject => "#{subject}",
			:to => "",
			:from => %("#{name}" <#{email}>)
		}
	end

  private

  def document_size_validation
    errors[:document] << "document should be less than 5MB" if document.size > 5.megabytes
  end

end