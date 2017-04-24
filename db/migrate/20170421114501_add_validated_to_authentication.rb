class AddValidatedToAuthentication < ActiveRecord::Migration[5.0]
    def change
        add_column :authentications, :validated, :boolean, default: true
    end
end
