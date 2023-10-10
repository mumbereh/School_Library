<<<<<<< HEAD:name_able.rb
# frozen_string_literal: true

=======
# Nameable interface
>>>>>>> parent of f323991 (configured linters):Nameable.rb
class Nameable
  def correct_name
    raise NotImplementedError, 'Subclasses must implement correct_name method'
  end
end
