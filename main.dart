import 'repositories/repository-impl.dart';
import 'repositories/repository.dart';
import 'services/aluno-service.dart';
import 'models/aluno.dart';
import 'services/grupo-service.dart';
import 'models/grupo.dart';

main() {
  //------------------------Aluno------------------------------
  Repository<Aluno, int> repositoryAluno = new RepositoryImpl();
  AlunoService alunoService = new AlunoService(repositoryAluno);

  Aluno aluno = new Aluno();

  //Cadastro Aluno 1
  aluno.id = 01;
  aluno.nome = 'Jubileu';
  aluno.email = 'jubileu@email.com';

  alunoService.cadastrar(aluno);
  //print(aluno);

  //Cadastro aluno 2
  aluno.id = 02;
  aluno.nome = 'Marineide';
  aluno.email = 'marineide@email.com';

  alunoService.cadastrar(aluno);
  //print(aluno);

  //Lista de alunos cadastrados
  print("------------------Lista de Alunos------------------");
  alunoService.buscarTodos().forEach((element) {
    print(element);
  });

  //------------------------Grupo------------------------------
  Repository<Grupo, int> repositoryGrupo = new RepositoryImpl();
  GrupoService grupoService = new GrupoService(repositoryGrupo);

  Grupo grupo = new Grupo();

  //Cadastrar Grupo 1
  grupo.id = 01;
  grupo.nome = 'Nome do Grupo 1';
  grupo.descricao = 'Descrição do grupo 1';

  grupoService.cadastrar(grupo);
  //print(grupo);

  //Cadastrar Grupo 2
  grupo.id = 02;
  grupo.nome = 'Nome do Grupo 2';
  grupo.descricao = 'Descrição do grupo 2';

  grupoService.cadastrar(grupo);
  //print(grupo);

  //Lista de grupos cadastrados
  print("------------------Lista de Grupos------------------");
  grupoService.buscarTodos().forEach((element) {
    print(element);
  });
}
