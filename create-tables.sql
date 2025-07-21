create  table escola (
    cnpj varchar(20) primary key,
    nome varchar(50) not null,
    telefone_comercial varchar(20) not null,
    logradouro varchar(50),
    cep varchar(10),
    cidade varchar(50),
    estado char(2)
);

create table professor (
    matricula SERIAL PRIMARY KEY,
    telefone_celular varchar(20) not null ,
    cpf varchar(11) not null,
    logradouro varchar(50),
    cep varchar(10),
    cidade varchar(50),
    estado char(2),
    cnpj_escola varchar(20) not null,
    constraint fk_professor_escola
        foreign key (cnpj_escola) references escola(cnpj)
);

create table turma (
    codigo serial primary key,
    sala varchar(20) not null,
    turno varchar(10) not null,
    cnpj_escola varchar(20) not null,
    constraint fk_turma_escola
        foreign key (cnpj_escola) references escola(cnpj)
);

create table aluno (
    matricula serial primary key,
    nome varchar(100) not null,
    cnpj_escola varchar(20) not null,
    codigo_turnma int not null,
    constraint fk_aluno_escola
        foreign key (cnpj_escola) references escola(cnpj),
    constraint fk_aluno_turma
        foreign key (codigo_turnma) references turma(codigo)
);

create table disciplina (
    codigo serial primary key,
    nome varchar(50) not null,
    ementa text not null,
    carga_horaria int not null,
    matricula_professor int not null,
    constraint fk_disciplina_professor
     foreign key (matricula_professor) references professor(matricula)
);

create table turma_disciplina (
    codigo serial primary key,
    codigo_turma int not null,
    codigo_disciplina int not null,
    dt_inicio date,
    dt_termino date,
    constraint fk_td_turma
        foreign key (codigo_turma) references turma(codigo),
    constraint fk_td_disciplina
        foreign key (codigo_disciplina) references disciplina(codigo)
);

create table endereco (
    codigo serial primary key,
    logradouro varchar(50) not null,
    cep varchar(10) not null,
    cidade varchar(50) not null,
    estado char(2) not null,
    aluno_matricula int not null,
    constraint fk_endereco_aluno
        foreign key (aluno_matricula) references aluno(matricula)
);

create table telefone (
    codigo serial primary key,
    tel_cel varchar(20) not null,
    tel_res varchar(20) not null,
    aluno_matricula int not null,
    constraint fk_telefone_aluno
        foreign key (aluno_matricula) references aluno(matricula)
);