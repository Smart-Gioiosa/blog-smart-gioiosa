class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

 def facebook
    service = Service.where(provider: auth.provider, uid: auth.uid).first

    # Look up existing user with this facebook account
    if service.present?
      user = service.user
      service.update(
        expires_at: Time.at(auth.credentials.expires_at),
        access_token: auth.credentials.token,
      )

    else
      user = User.new(
        email: auth.info.email,
        #name: auth.info.name,
        password: Devise.friendly_token[0,20]
      )
      user.skip_confirmation!
      user.save
      user

      user.services.create(
        provider: auth.provider,
        uid: auth.uid,
        expires_at: Time.at(auth.credentials.expires_at),
        access_token: auth.credentials.token,
      )
    end

    sign_in_and_redirect user, event: :authentication
    set_flash_message :notice, :success, kind: "Facebook"
  end

  def auth
    request.env['omniauth.auth']
  end
=begin
  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
=end
end
