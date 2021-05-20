class Image < ApplicationRecord

  belongs_to :product

  # validates_format_of :url, :with => %r{\.(png|jpg|jpeg|gif)$}i, :message => "does not contain correct file extension",  :multiline => true

end
