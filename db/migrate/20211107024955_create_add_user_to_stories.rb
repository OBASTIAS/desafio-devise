class CreateAddUserToStories < ActiveRecord::Migration[5.1]
  def change
    create_table :add_user_to_stories do |t|

      add_reference :stories, :user, foreign_key: true

    end
  end
end
