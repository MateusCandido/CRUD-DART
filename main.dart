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
  Aluno alunoTres = new Aluno();
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

  //Cadastro aluno 3
  alunoTres.id = 03;
  alunoTres.nome = 'Cleber';
  alunoTres.email = 'clebinho@email.com';

  alunoService.cadastrar(alunoTres);
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
  Grupo grupoTres = new Grupo();
  //Cadastrar Grupo 1
  grupoUm.id = 01;
  grupoUm.nome = 'Grupo 1';
  grupoUm.descricao = 'Descrição do grupo 1';

  grupoService.cadastrar(grupoUm);
  //print(grupo);

  //Cadastrar Grupo 2
  grupoDois.id = 02;
  grupoDois.nome = 'Grupo 2';
  grupoDois.descricao = 'Descrição do grupo 2';

  grupoService.cadastrar(grupoDois);
  //print(grupo);

  //Cadastrar Grupo 3
  grupoTres.id = 02;
  grupoTres.nome = 'Grupo 3';
  grupoTres.descricao = 'Descrição do grupo 3';

  grupoService.cadastrar(grupoTres);
  //print(grupo);

  //Lista de grupos cadastrados
  print("------------------Lista de Grupos------------------");
  grupoService.buscarTodos().forEach((element) {
    print(element);
  });
}
