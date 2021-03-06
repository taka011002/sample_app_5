module UsersHelper

  #引数で与えられたユーザーのGravatarの画像を返す
  def gravatar_for(user, options = { size: 80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravater_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravater_url,alt: user.name, class: "gravatar")
  end
end
