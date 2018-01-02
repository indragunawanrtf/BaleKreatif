Trestle.resource(:posts) do
  menu do
    item :posts, icon: "fa fa-clipboard", group: :content
  end

  table do
    column :id
    column :title
    column :description
    column :author
    column :category
  end

  form do |f|
    text_field :title
    text_area :description
    text_field :author
    file_field :image
  end
end
