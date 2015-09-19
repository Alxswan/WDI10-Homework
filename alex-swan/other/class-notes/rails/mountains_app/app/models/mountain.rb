# == Schema Information
#
# Table name: mountains
#
#  id      :integer          primary key
#  name    :text
#  image   :text
#  country :text
#  height  :float
#  range   :text
#

class Mountain < ActiveRecord::Base
end
