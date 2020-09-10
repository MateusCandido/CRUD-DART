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

  Aluno alunoUm = new Aluno();
  Aluno alunoDois = new Aluno();

  //Cadastro Aluno 1
  alunoUm.id = 01;
  alunoUm.nome = 'Jubileu';
  alunoUm.email = 'jubileu@email.com';

  alunoService.cadastrar(alunoUm);
  //print(aluno);

  //Cadastro aluno 2
  alunoDois.id = 02;
  alunoDois.nome = 'Marineide';
  alunoDois.email = 'marineide@email.com';

  alunoService.cadastrar(alunoDois);
  //print(aluno);

  //Lista de alunos cadastrados
  print("------------------Lista de Alunos------------------");
  alunoService.buscarTodos().forEach((element) {
    print(element);
  });

  //------------------------Grupo------------------------------
  Repository<Grupo, int> repositoryGrupo = new RepositoryImpl();
  GrupoService grupoService = new GrupoService(repositoryGrupo);

  Grupo grupoUm = new Grupo();
  Grupo grupoDois = new Grupo();
  //Cadastrar Grupo 1
  grupoUm.id = 01;
  grupoUm.nome = 'Nome do Grupo 1';
  grupoUm.descricao = 'Descrição do grupo 1';

  grupoService.cadastrar(grupoUm);
  //print(grupo);

  //Cadastrar Grupo 2
  grupoDois.id = 02;
  grupoDois.nome = 'Nome do Grupo 2';
  grupoDois.descricao = 'Descrição do grupo 2';

  grupoService.cadastrar(grupoDois);
  //print(grupo);

  //Lista de grupos cadastrados
  print("------------------Lista de Grupos------------------");
  grupoService.buscarTodos().forEach((element) {
    print(element);
  });
}
