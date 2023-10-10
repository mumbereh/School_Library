# frozen_string_literal: true

class Nameable
  def correct_name
    raise NotImplementedError, 'Subclasses must implement correct_name method'
  end
end
