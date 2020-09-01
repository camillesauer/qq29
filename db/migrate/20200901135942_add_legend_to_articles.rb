class AddLegendToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :video, :text
    add_column :articles, :legend, :text
    add_column :articles, :legend_2, :text
    add_column :articles, :legend_3, :text
    add_column :articles, :legend_4, :text
    add_column :articles, :legend_5, :text
    add_column :articles, :legend_6, :text
    add_column :articles, :legend_7, :text
    add_column :articles, :legend_8, :text
    add_column :articles, :legend_9, :text
    add_column :articles, :legend_10, :text
  end
end
