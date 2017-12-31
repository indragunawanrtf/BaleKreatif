Trestle.resource(:categories) do
  menu do
    item :categories, icon: "fa fa-diamond", group: :content
  end

  table do
    column :id
    column :name
  end

end
