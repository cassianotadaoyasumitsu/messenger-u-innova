module ApplicationHelper
  def self.validate_phone(phone_number)
    # Remove todos os traços
    phone_number.gsub!('-', '')

    # Remove o primeiro 0, se existir
    phone_number.sub!(/^0/, '')

    # Adiciona +81 no início, se não existir
    phone_number.prepend('+81') unless phone_number.start_with?('+81')

    phone_number
  end
end
