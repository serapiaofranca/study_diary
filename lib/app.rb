require_relative 'study_item'

teste1 = StudyItem.new(title: 'Loop', category: 'Ruby')
p teste1.to_s
teste1.modify_status
p teste1.to_s