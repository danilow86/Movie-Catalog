
## Curso Básico Swift





## AutoLayout
AutoLayout
Diferentes resoluções - Restrições(constrains)

Constrains servem para adicionar restrições 
É possível adicionar align para que centralize algum elemento

Add Variation vai servir para adicionar uma variação a diferentes resoluções(Ipad, Iphone…)

Constrain representa alguma restrição/regra voltada a componentes visuais e assim oferecer uma boa experiência visual ao usuário final

wC & hR representa um tipo de categorização para tamanho de dispositivos. wC significa width Compact e hR height Regular. Esse tipo é voltado para Iphones

##Incluindo código na tela de Login
Incluindo código na tela de Login

Criar uma tela(View Controler)
Representa uma tela simples

option + classe = abre o código na tela

IBOutlet 
Representa que a variável faz apontamento para um componente virtual
Palavra reservada em código responsável por indicar que uma variável está referenciando/representando algum componente de interface(Por exemplo: UIButton,UILabel etc)

IBAction
Palavra reservada em código responsável por indicar que uma variável é chamada a partir de alguma interação do usuário

Variável: É a maneira de represnetar algo que será armazenado em qualquer local e o valor pode ser alterado no futuro

func indica que é uma função


Laço para verificar o Login

 if (txtLogin.text == "danilo" && txtPassword.text == "1234"){
            performSegue(withIdentifier: "tela2", sender: self)
            
        }
            else
        {
            print("Wrong user or password")
            
        }


1- Criar constante(let)
2- UIAlertController classe oferecida pelo Xcode
3- Caixa de mensagem UIAlertController.Style.alert
4- Botão para confirmar mensagem 
5- alert.addAction ação do botão
6- Animação de apresentar caixa de mensagem: self.present(

		{
                let alert = UIAlertController(title: "Alert",
                message: "Erro no Login", preferredStyle:
                    UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style:
                    UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            
        }
## Desenvolvendo uma lista de filmes assistidos Table view controller === permite adicionar uma lista

Desenvolvendo uma lista de filmes assistidos
Table view controller === permite adicionar uma lista

é possível definir vários identificadores para o template
UITableViewController 
CLASSE já criada pela apple que define o tipo de tela que estamos a criar
Uma classe que representa uma lista de informações


numberOfSections sessão que representa diferentes categorias


Criamos uma variável que receberá um array de filmes

Descomentamos a override func tableView e substituimos o parâmetro reuseIdentifier pelo parâmetro “cell” que passamos a nossa segunda tela

É preciso vincular o arquivo .swift com a nossa tela

O que é SEGUE?
Define uma transição entre dois view controlares(telas) representadas em um arquivo storyboard

Table view controller
Recurso usado para exibir visualmente informações estruturadas em uma lista vertical
## O que é Tab Bar

Relationship segue para adicionar relacionamento entre as telas
Recomendação
colocar de 3 a 5 opç\oes quando se desenvolve para o Iphone

Tab Bar
Componente visual que aparece na parte inferior da tela de um aplicativo e permite alternar rapidamente entre diferente seções/categorias presentes no app




## Aprendendo a estruturar melhor meu código


Criamos um arquivo Filmes.swift e uma classe filmes
 static var 
variável de class e não de objeto
não será preciso instanciar a classe

variável de objeto é preciso criar um objeto para acessar as informações daquele objeto
## Estruturando o código para facilitar o acesso a uma lista de filmes 

Command + B
vai recompilar e fazer uma validação do que foi feito anteriormente

Append === adicionar ao final da lista uma nova informação
DataFilms.films.append(film5)

createFilms() -> só sera chamada se login e senha estiverem corretos
.removeAll() -> zera todas as informações que estão em filmes


cell.textLabel.text = DataFilms.films[indexPath.row].name -> Com isso acessamos a classe DataFilms e apresentamos os filkmes que desajamos para o usuário


Qual o impacto da palavra “static” em um código criado?
Permite criar variáveis e funções de classe

O que é variável de objeto? 
Variável que pertence a algum objeto instanciado de uma classe
## Desenvolvendo uma coleção customizada

Criamos uma collection view controller(ícone +)


UIIMAGE View

Label
Não esquecer de fazer o vínculo da Class(name) com o Collection View Cell

Basta clicar na label ou qualquer outro objeto, selecionar a tecla ctrl e arrastar até o código 
assim os Outlets serão criados


UICollectionViewController
Classes que representam as telas do tipo connection



No identifier definimos o id do template que vai ser utilizado

A linha abaixo indica que o padrão será seguido
as! CollectionViewCell

Aqui fazemos a recuperação da imagem
cell.imageViewFavorite.image = UIImage(named: DataFilms[indexPath.row])
——————————————————————————————————————————
static 
Isso significa que estamos a criar uma função de classe 
Então para acessa-la não é preciso criar um objeto ter o nomr da classe e digitar ponto(.)
e conseguimos acessar a função

A função abaixo retorna os filmes favoritos 
class DataFilms {
    static var films:[Film] = []
    [
    static func getFavoriteFilms() ->Film] {
        var favoriteFilms:[Film] = []
        
        for film in DataFilms.films{
            if(film.isMyFavorite == true){
                favoriteFilms.append(film)
            }
        }
        
        return favoriteFilms
    }
    
}