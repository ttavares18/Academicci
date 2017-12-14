<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Cadastro - ACADEMICI</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <script type="text/javascript" src="clockp.js"></script>
        <script type="text/javascript" src="clockh.js"></script> 
        <script type="text/javascript" src="jquery.min.js"></script>
        <script type="text/javascript" src="ddaccordion.js"></script>
        <script type="text/javascript">
            ddaccordion.init({
                headerclass: "submenuheader", //Shared CSS class name of headers group
                contentclass: "submenu", //Shared CSS class name of contents group
                revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
                mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
                collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
                defaultexpanded: [], //index of content(s) open by default [index1, index2, etc] [] denotes no content
                onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
                animatedefault: false, //Should contents open by default be animated into view?
                persiststate: true, //persist state of opened contents within browser session?
                toggleclass: ["", ""], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
                togglehtml: ["suffix", "<img src='images/plus.gif' class='statusicon' />", "<img src='images/minus.gif' class='statusicon' />"], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
                animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
                oninit: function (headers, expandedindices) { //custom code to run when headers have initalized
                    //do nothing
                },
                onopenclose: function (header, index, state, isuseractivated) { //custom code to run whenever a header is opened or closed
                    //do nothing
                }
            })
        </script>

        <script type="text/javascript" src="jconfirmaction.jquery.js"></script>
        <script type="text/javascript">

            $(document).ready(function () {
                $('.ask').jConfirmAction();
            });

        </script>

        <script language="javascript" type="text/javascript" src="niceforms.js"></script>
        <link rel="stylesheet" type="text/css" media="all" href="niceforms-default.css" />

    </head>
    <body>
        <div id="main_container">

            <div class="header">
                <div class="logo"><a href="paginaInicial.jsp"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
                <div class="right_header">Welcome Admin, | <a href="frmmensagens.jsp" class="messages">(1) Messages</a> | <a href="index.jsp" class="logout">Logout</a></div>
            </div>

            <div class="main_content">

                <div class="menu">
                    <ul>

                    </ul>
                </div> 

                <div class="center_content">  

                    <div class="right_content">             

                        <h1>Regimento de Monitoria</h1>

                        <div>
                         
                            <h3>I - DAS NORMAS GERAIS</h3></br></br></br>
1.	A monitoria dos Cursos Superiores de Computação será exercida somente pelos acadêmicos regularmente matriculados nos mesmos.</br>
2.	É permitido exercer monitoria em qualquer disciplina, o aluno que estiver regularmente matriculado no ano letivo em curso, tendo anteriormente cursado a disciplina a que se habilita, ou ainda dispensado da mesma, porém com aproveitamento igual ou superior a 70%.</br>
2.1.	Apresentando um bom desempenho e com a aprovação do docente da disciplina, alunos matriculados na própria disciplina poderão exercer monitoria da mesma, desde que não haja interferência negativa em seu desempenho escolar.</br>
3.	A monitoria será exercida sem qualquer ônus para os Cursos Superiores de Computação ou, ainda, para a entidade mantenedora.</br>
4.	A monitoria não exime o monitor de frequências e avaliações das disciplinas do semestre em que estiver matriculado.</br>
5.	O aluno poderá se inscrever nas seguintes modalidades de monitoria: “Em Aula” e/ou “Fora da Aula”. Em ambas as modalidades, o aluno deverá ter, no mínimo, quatro horas semanais para o cumprimento das suas atividades de monitoria.</br>
5.1. É permitido ao aluno o acúmulo de, no máximo, três monitorias em um mesmo semestre, desde que não venha interferir em seu desempenho acadêmico.</br>
6.	É vedado o exercício de tais atividades quando coincidir com o horário das aulas da graduação.</br>
6.1.	A exceção é apenas quando o aluno é monitor em sala da própria disciplina, com o suporte do professor responsável. A finalidade desse tipo de modalidade de monitoria é apoiar/sanar dúvidas dos demais acadêmicos que possuem dificuldades nos exercícios apresentados durante a aula da disciplina, propostos pelo professor.</br>
7.	Os objetivos do programa de monitoria são:</br>
7.1.	Estimular o interesse do aluno pela carreira docente, por meio de sua participação nas atividades de ensino do curso.</br>
7.2.	Estimular a integração entre o corpo docente e discente, por meio da participação do aluno na vida acadêmica, especialmente no desenvolvimento de projetos de apoio à atividade docente, como busca incessante para melhoria do ensino em todos os níveis.</br>
7.3.	Fornecer ao aluno ferramentas e condições para o aprofundamento técnico-científico voltado para docência.</br>
8.	A Diretoria dos Cursos Superiores de Computação estabelecerá, a cada início de semestre letivo, o período para solicitação de monitoria, publicando o Edital de Seleção de Monitores (Apêndice I);</br>
8.1.	O pedido de monitoria para cada disciplina deverá ser feito via e-mail pelo docente responsável, encaminhado à secretaria setorial dos Cursos Superiores de Computação. O professor deve informar a quantidade de vagas a serem ofertadas para a monitoria em sua disciplina (informações para o Apêndice I).</br>
</br>
<h3>II - DOS DEVERES DO MONITOR</h3></br></br></br>
</br>
9.	Cumprir as atividades de monitoria com pontualidade e assiduidade.</br>
9.1.	Assinar o Termo de Compromisso (Apêndice II), concordando em seguir todas as exigências contidas no Regimento de Monitoria.</br>
9.2.	O horário da monitoria será definido em conjunto com os alunos da turma, o monitor e o professor responsável pela disciplina.</br>
9.2.1.	O aluno-monitor deverá cumprir 4 (quatro) horas semanais de atividades de monitoria, podendo estas serem presenciais (duas horas) e a distância (duas horas), devidamente comprovadas usando fórum de dúvidas, e-mails, wikis, Redmine, dentre outros.</br>
9.3.	Registrar na ficha de frequência as atividades desenvolvidas, assim como a data e o período (Apêndice III).</br>
10.	Planejar, em conjunto com o professor-orientador da disciplina, suas atividades de monitoria, elaborando assim o Plano de Trabalho semestral (Apêndice IV).</br>
11.	Procurar, com frequência, o professor-orientador da monitoria com a finalidade de receber orientações; apresentar as atividades e principais dúvidas sanadas durante a monitoria; auxiliar os alunos na realização de trabalhos teórico- práticos; esclarecer dúvidas sobre conteúdos estudados; apresentar a frequência dos discentes participantes; atender/apresentar outras solicitações do professor referentes à atividade de monitoria.</br>
12.	Assinar a sua ficha de frequência mensal das atividades de monitoria desempenhadas e entregar o boletim na Secretaria Setorial até o dia 05 de cada mês subsequente (Apêndice III).</br>
12.1.	Será desligado da monitoria o aluno que não comparecer durante 15 (quinze) dias consecutivos ou 30 (trinta) dias intercalados, sem justificativa aceita pelo professor-orientador.</br>
13.	Elaborar o relatório final sobre as atividades de monitoria desempenhadas ao longo do semestre, que deve ser entregue no final do semestre (data a ser definida pela Coordenação de Monitoria) (Apêndice V).</br>
14.	É dever do monitor, informar à turma, em todos os meios de comunicação disponíveis (mural da sala, mural da secretaria, e-mail, grupos de discussão, entre outros) sobre datas, horários e demais notificações acerca das atividades de monitoria.</br>
15.	Facilitar o relacionamento entre os alunos e professores, contribuindo para o cumprimento do plano de ensino da disciplina.</br>
16.	Apresentar ao professor orientador, quando for o caso, proposta de seu desligamento do Programa, com antecedência mínima de 15 dias.</br>
17.	Avaliar o andamento da disciplina do ponto de vista do aluno, apresentando sugestões ao professor.</br>
18.	Os deveres específicos do monitor, referentes à monitoria da disciplina, serão determinados e registrados no Termo de Compromisso, devidamente assinado pelo monitor e professor da disciplina.</br>
19.	É vedado aos monitores substituir o professor nas aulas de sua responsabilidade, aplicar provas e trabalhos de verificação do rendimento escolar, ministrar cursos de acompanhamento, em caráter particular, para alunos que estiverem cursando disciplinas objeto de Monitoria e exercer quaisquer atividades de caráter administrativo, de julgamento, de verificação de aprendizagem e de supervisão de estágio.</br>
</br>
<h3>III - DOS DEVERES DO DOCENTE REQUISITANTE DA MONITORIA</h3></br></br></br>
</br>
20.	Encaminhar à Direção do Curso de Graduação em Engenharia de Computação e à Coordenação de Monitoria, no fim de cada semestre letivo, a quantidade de monitores para vigência na sua disciplina, no período letivo subsequente.</br>
21.	Participar do processo seletivo para monitoria, realizando a entrevista dos respectivos candidatos, assim como a análise de currículos e a prova escrita dos mesmos, se aplicável.</br>
21.1.	O docente deverá observar os critérios para avaliação da entrevista e analise curricular, se for o caso (Apêndice VI).</br>
21.2.	O docente deverá elaborar a prova escrita a ser aplicada aos candidatos, quando necessário.</br>
21.3.	O docente deverá enviar, ao Coordenador de Monitoria, os resultados da avaliação de cada aluno que teve a sua inscrição homologada e participou do processo seletivo.</br>
22.	Apoiar o aluno-monitor no planejamento das atividades da monitoria.</br>
23.	Acompanhar o desempenho do aluno-monitor, bem como a evolução dos discentes que participam da monitoria.</br>
24.	Sanar as dúvidas do aluno-monitor.</br>
25.	Acompanhar	a	redação	dos	relatórios	das	atividades	de	monitoria desenvolvidas e assiná-lo juntamente com o monitor.</br>
26.	Incentivar os alunos a participarem da monitoria, seja como monitor ou para sanar as suas dúvidas/dificuldades relativas à disciplina.</br>
27.	Encaminhar à monitoria todos os alunos da turma, em especial, àqueles que possuem maior dificuldade com a disciplina (Apêndice VII).</br>
</br>
<h3>IV - DOS DEVERES DO COORDENADOR DE MONITORIA</h3></br></br></br>
</br>
28.	Organizar e acompanhar o processo de seleção para a monitoria.</br>
29.	Publicar as inscrições de monitorias homologadas (Apêndice VIII).</br>
29.1.	Solicitar à Secretária dos Cursos Superiores de Computação a emissão do histórico curricular dos alunos que tiveram suas inscrições homologadas e que informaram que cursaram (ou aproveitaram) a disciplina pela qual estão pleiteando a vaga de monitores.</br>
30.	Analisar o resultado da avaliação realizada pelo professor da disciplina.</br>
30.1.	Se houver um número maior que o ofertado para a disciplina, o Coordenador de Monitoria deverá observar os critérios de desempate e gerar uma planilha com o resultado preliminar.</br>
30.2.	Se o professor responsável pela disciplinar julgar necessário, a depender do tamanho da turma, o mesmo pode solicitar o aumento do número de monitores para a respectiva disciplina.</br>
31.	Solicitar à Diretoria dos Cursos Superiores de Computação a apreciação do resultado preliminar para emissão do parecer final da seleção de monitores.</br>
32.	Acompanhar o desempenho dos alunos-monitores, aprovados na seleção.</br>
33.	Sanar as dúvidas dos alunos-monitores com relação ao presente Regimento, Edital e/ou Termo de Compromisso.</br>
</br>
<h3>V - DA SELEÇÃO</h3></br></br></br>
</br>
34.	O aluno poderá se inscrever, por meio do formulário de inscrição online (Apêndice IX), em até três disciplinas por semestre letivo.</br>
34.1.	O exercício da monitoria poderá ser mantido ao longo de um ou dois semestres letivos, não sendo permitida a recondução do estudante na mesma(s) disciplina(s) após este período.</br>
34.2.	Será permitida a prorrogação da monitoria somente aos alunos- monitores que entregaram todos os artefatos da monitoria solicitados pela Coordenação, assim como após a aprovação do docente da disciplina.</br>
34.3.	O aluno deverá realizar a sua inscrição durante o período informado.</br>
34.4.	Ao término do período de inscrição, a Diretoria dos Cursos Superiores de Computação publicará as inscrições homologadas, assim como o local e o horário onde as entrevistas serão realizadas (Apêndice X).</br>
34.5.	A carga horária semanal dos monitores é, no mínimo, de 4 horas e, máxima de 12 horas, sendo que o horário das atividades não poderá prejudicar o cumprimento das disciplinas regulares do estudante no curso;</br>
34.6.	O aluno-monitor poderá atuar, juntamente com o professor-orientador, no horário da aula da respectiva disciplina e/ou em outro horário, de acordo com sua disponibilidade;</br>
34.7.	O acadêmico aprovado no processo seletivo ocupará a vaga de aluno- monitor;</br>
35.	Para participar do processo seletivo, os acadêmicos deverão observar os seguintes critérios:</br>
35.1.	Estar regularmente matriculado nos Cursos Superiores de Computação.</br>
35.2.	Ter nota igual ou superior a 7.0(sete) na(s) disciplina(s) que irá se candidatar.</br>
35.3.	Ter disponibilidade de, no mínimo, quatro horas semanais para o cumprimento das atividades de monitoria;</br>
35.4.	Não ter sido advertido em nenhuma das disciplinas;</br>
36.	A seleção constará das seguintes etapas:</br>
36.1.	Primeira fase (obrigatória): entrevista, entre o professor da disciplina e o acadêmico candidato à monitor.</br>
36.2.	Segunda fase: prova escrita.</br>
36.2.1.	A prova escrita será obrigatória aos alunos candidatos que ainda estão cursando a disciplina e, também, para aqueles que já cursaram e obtiveram média final menor que 7.0 (sete).</br>
36.3.	Terceira fase (opcional) análise curricular. No ato da inscrição, o aluno deverá informar o link do seu currículo Lattes. Se for realizada a análise curricular, o aluno deverá apresentar os documentos comprobatórios de tudo que está no currículo Lattes.</br>
36.4.	Todas as etapas terão notas de zero a cem pontos. Se o professor da disciplina optar por não realizar a análise curricular e a prova escrita, a etapa de entrevista terá cem por cento de peso para classificação dos candidatos, inscritos no processo seletivo.</br>
37.	Após a realização da avaliação, se haver um número maior de candidatos relativos ao número de vagas solicitadas pelo professor-orientador, utilizar-se- ão os seguintes critérios de desempate:</br>
37.1.	O estudante com melhor desempenho na disciplina (avaliação feita pelo professor responsável).</br>
37.2.	O estudante com melhor desempenho no curso (extraído do histórico escolar do aluno).</br>
37.3.	O estudante com maior número de créditos cursados.</br>
37.4.	Havendo empate para ocupação da(s) vaga(s), será(ão) classificado(s) o(s) aluno(s) que obtiver(em) maior número de pontos na entrevista. Caso persista o empate será(ão) classificado(s) o(s) aluno(s) com mais idade. Persistindo ainda o empate, a classificação será realizada pelo professor da disciplina.</br>
38.	O resultado da seleção será apresentado para apreciação da Diretoria dos Cursos Superiores de Computação, que emitirá o parecer final, assim como homologará o resultado final da seleção de monitoria (Apêndice XI).</br>
38.1.	O resultado final da seleção será publicado pela Diretoria dos Cursos Superiores de Computação, divulgando em meio eletrônico e afixando nos murais do curso.</br>
39.	Os alunos-monitores, cujo desempenho foi aprovado pelo professor para continuação do trabalho, poderão ser convidados a permanecer nas atividades de monitoria da respectiva disciplina, por no máximo, dois semestres letivos.</br>
40.	A seleção deverá ser realizada seguindo as normas de monitoria contidas no presente Regimento.</br>
</br>
<h3>VI - DA CERTIFICAÇÃO</h3></br></br></br>
</br>
41.	Ao final do semestre letivo, será concedido ao aluno-monitor um Certificado de Participação, no qual se especificará a disciplina e a carga horária correspondente a monitoria exercida em cada disciplina, desde que:</br>
41.1.	O monitor tenha cumprido com os deveres atinentes à monitoria e obtido frequência em 90%, registrada devidamente em diário próprio, confeccionado pela secretaria dos Cursos Superiores de Computação.</br>
41.2.	O exercício da monitoria poderá ser cancelado (Apêndice XII): por solicitação do aluno-monitor; a pedido do professor da disciplina, mediante justificativa / descumprimento das exigências do presente Termo/Regimento de Monitoria; por sanção disciplinar; por trancamento de matrícula; por faltas não justificadas nas atividades de monitoria, não comparecendo durante 15 (quinze) dias consecutivos ou 30 (trinta) dias intercalados, sem justificativa aceita pelo professor-orientador. Neste caso, o monitor receberá o Certificado referente aos dias em que exerceu as suas atividades somente se cumpriu o estabelecido neste Regimento.</br>
41.3.	O aproveitamento do aluno-monitor for julgado suficiente pelo professor da disciplina.</br>
42.	Os certificados concedidos serão registrados em livro próprio da Secretaria Setorial dos Cursos Superiores de Computação.</br>
43.	Os casos omissos no presente Regimento serão resolvidos pelo Núcleo Docente Estruturante dos Cursos Superiores de Computação.</br>
</br>
</br>
Este Regimento foi aprovado pelo colegiado e Núcleo Docente Estruturante do Curso de Engenharia de Computação aos vinte e oito dias do mês de março do ano de 2017.</br>
</br>
                            
                            
                        </div>  


                    </div><!-- end of right content-->


                </div>   <!--end of center content -->               




                <div class="clear"></div>
            </div> <!--end of main content-->


            <div class="footer"></div>

        </div>		
    </body>
</html>