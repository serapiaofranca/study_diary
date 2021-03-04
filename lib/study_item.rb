class StudyItem
    attr_reader :title, :category
    attr_accessor :status

    def initialize(title:, category:)
      @title = title
      @category = category
      @status = false
    end

    def status
        @status
    end

    def modify_status
        @status = true
    end
end