Trestle.resource(:programs) do
  menu do
    item :programs, icon: "fa fa-database", group: :content
  end

  table do
    column :id
    column :title
    column :description
    column :author
  end

  form do |f|
    text_field :title
    text_area :description
    text_field :author
    file_field :image
  end
end
