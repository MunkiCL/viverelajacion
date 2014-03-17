Pony.options = {
  :to => 'matiasfh@gmail.com',
  :via => :smtp,
  :via_options => {
    :address              => 'smtp.mandrillapp.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => ENV["MANDRILL_USERNAME"],
    :password             => ENV["MANDRILL_API_KEY"],
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
  }
}
