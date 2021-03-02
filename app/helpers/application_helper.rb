module ApplicationHelper

  def display_session_links
    capture do
      concat link_to "Domov", root_path
      concat " "
      concat link_to "Novice", news_index_path
      concat " "
      if user_signed_in?
        concat link_to "Uredi profil", edit_user_registration_path
        concat " "
        concat link_to "Odjava", destroy_user_session_path, method: :delete
      else
        concat link_to "Prijava", new_user_session_path
        concat " "
        concat link_to "Vpis", new_user_registration_path
      end
    end
  end

end
