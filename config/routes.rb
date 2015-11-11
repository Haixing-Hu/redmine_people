# This file is a part of Redmine CRM (redmine_contacts) plugin,
# customer relationship management plugin for Redmine
#
# Copyright (C) 2011-2015 Kirill Bezrukov
# http://www.redminecrm.com/
#
# redmine_people is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# redmine_people is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with redmine_people.  If not, see <http://www.gnu.org/licenses/>.

# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

resources :people do
    collection do
      get :bulk_edit, :context_menu, :edit_mails, :preview_email, :avatar
      post :bulk_edit, :bulk_update, :send_mails
      delete :bulk_destroy
    end
end

resources :departments do
  member do
    get :autocomplete_for_person
    post :add_people
    delete :remove_person
  end
end

resources :people_settings do
  collection do
    get :autocomplete_for_user
  end
end

resources :people_queries

