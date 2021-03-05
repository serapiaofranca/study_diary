require_relative 'study_item'
INSERT = 1
LIST = 2
CHECKED = 3
EXIT = 4

def initial_salutation
    puts " Seja bem vindo"
    puts "." * 30
    puts "Escolha uma opção: "
    puts "." * 30
end

def menu_list

    puts "[#{INSERT}] - Inserir novo item de estudo"
    puts "[#{LIST}] - Listar todos itens para estudo"
    puts "[#{CHECKED}] - Marcar estudo como concluido"
    puts "[#{EXIT}] - SAIR do sistema."
    puts "-" * 30

end

i = 0
while i < 10
    
    initial_salutation
    menu_list
    puts
    test = gets.chomp.to_i
    case test
    when 4 
        return         
    else
        i+= 1
    end   
end

