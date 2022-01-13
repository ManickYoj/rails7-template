# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  # This is a silly test! Just something to be sure the config works.
  # Delete it when you're ready for actual tests.
  describe '#update' do
    it 'is created' do
      user = create(:user)
      user.update(sign_in_count: 5);
      expect(user.sign_in_count).to eql(5)
    end
  end
end
