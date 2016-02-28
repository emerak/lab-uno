module ApplicationHelper

  def specie_path
    return {url: species_index_path, method: :post} unless @specie.persisted?
    {url: species_path, method: :put}
  end
end
