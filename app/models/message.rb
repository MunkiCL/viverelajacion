class Message
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  # attribute :name
  # attribute :email
  # attribute :content

  attr_accessor :name, :email, :content, :nickname


  validates :email, :format => { with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,8}\z/i , on: :create}
  validates :content, :presence => true
  validates :name, :presence => true
  validates :message,:length => { :minimum => 10, :maximum => 5000 }
  validates :nickname,
    :format => { :with => /^$/, :multiline => true },
    :presence => false

  def initialize(attributes = {})
    if not attributes.nil?
      attributes.each do |name, value|
        send("#{name}=", value)
      end
    end
  end

  def deliver
    # return false unless valid?
    MailWorker.perform_async(self.email, self.name, self.content)

  end

  def persisted?
    false
  end
end
