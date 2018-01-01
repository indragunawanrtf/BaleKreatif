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
    column :image
  end


  form do
    text_field :title
    text_field :description
    text_field :author
    file_field :image
    text_field :created_at
    text_field :updated_at
  end
end
