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
end
