module Refinery
  module Works
    class Work < Refinery::Core::BaseModel
      self.table_name = 'refinery_works'

      validates :title, presence: true, uniqueness: true

      belongs_to :image, class_name: '::Refinery::Image'

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

      def horizontal_image?
        image.width > image.height
      end
    end
  end
end
