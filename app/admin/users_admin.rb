Trestle.resource(:users) do
  menu do
    item :users, icon: "fa fa-users", group: :users
  end

  search do |s|
    User.where("name ILIKE ?", "%#{s}%")
  end

  table do
    column :id
    column :email
    column :name, header: "Nama", align: :center
    column :address, header: "Alamat", align: :center
    column :pekerjaan
    column :provider
    column :uid
  end
end
