Trestle.resource(:profiles) do
  menu do
    item :profiles, icon: "fa fa-drivers-license-o", group: :content
  end

  table do
    column :id
    column :title
    column :description
  end
end
