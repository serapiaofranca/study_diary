require './db/control_db.rb'

class StudyItem
    attr_reader :title, :category
    attr_accessor :status

    def initialize(title:, category:)
      @title = title
      @category = category
      @status = false
    end

    def modify_status
        @status = true
    end

    def to_s
        if status.eql?(false) || status.eql?(0)
          return "##id: none  Title: #{title} , category: #{category} , status: 'pendente' "
        else
            return "##id: none  Title: #{title} , category: #{category} , status: 'finalizado' "
        end
    end
end