contasCorrentes = { "12345-6" => "87144798", "23456-7" => "92027944"}

loop do

    puts "Bem vindo ao seu Banco Digital!"
    puts "Escolha uma opção 1 - Sou cliente 2 - Quero ser cliente 3 - Sair"
    opcaoMenu = gets.chomp.to_i

    case opcaoMenu 
    when 1
        puts "Informe o número da sua conta-corrente (formato xxxxx-x)"
        numeroConta = gets.chomp.strip

        puts "Informe a sua senha:"
        senha = gets.chomp 

        regex = /^\d{5}-\d{1}$/
    
        if numeroConta.match?(regex)
            if contasCorrentes.key?(numeroConta) # verifica se o numeroConta corresponde a uma key
                puts contasCorrentes[numeroConta] + senha 
                if contasCorrentes[numeroConta] == senha #verifica se a senha corresponde ao value da key                                         
                    puts "Conta correta! Bem-vindo!"
                else 
                    puts "Conta ou senha inválidos!"
                end
            end
        else
            puts "Formato inválido!"
        end
    
    when 2
        puts "Vamos fazer o seu cadastro..."
    when 3
        puts "Saindo..."
        break
    end

end