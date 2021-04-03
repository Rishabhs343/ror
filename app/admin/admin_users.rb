ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation
  # before_action :index

  # def index
  #   puts("=================================================================================")
  #   # User.all do |user|
  #   #   puts(user.admin)
  #   @user=User.all
  #   @admin=AdminUser.all.to_a
  #   list=[]
  #   @admin.each do |x|
  #     if not list.include?(x.email)
  #       list<<x.email
  #     end
  #   end
  #   for i in @user
  #     if (i.admin == true)
  #       puts(i.email)
  #       if not list.include?(i.email)
  #         AdminUser.create!(email: i.email, password: 'password', password_confirmation: 'password').save
  #       end
  #     else
  #       if list.include?(i.email)
  #         puts(i.email)
  #         AdminUser.find_by(email: i.email).delete
  #       end
  #     end
  #   end
  #   puts("=================================================================================")
  # end
 

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end



  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
