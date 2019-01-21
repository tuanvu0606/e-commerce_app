class SkillsGrid < BaseGrid

  scope do
    Skill
  end

  filter(:id, :integer)
  filter(:name, :string)
  filter(:created_at, :date, :range => true)

  column(:id)
  column(:name)
  date_column(:created_at)
end
