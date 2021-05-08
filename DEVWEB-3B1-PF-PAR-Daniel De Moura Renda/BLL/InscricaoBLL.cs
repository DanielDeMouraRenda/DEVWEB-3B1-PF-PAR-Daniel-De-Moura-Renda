using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

using Workshop_Tecnologia.DTO;


    public class inscricaoBLL
    {
        private string query;
        private inscricaoBLL conexao = new inscricaoBLL();
        public void Criar(inscricaoBLL objetoDTO)
        {
            query = $"insert into candidatura(nome, descricao) values ('{objetoDTO.nome}','{objetoDTO.Id}');";
            conexao.executarComandos(query);
        }

        public void Alterar(inscricaoDTO objetoDTO)
        {
            query = $"update  candidatura set nome = '{objetoDTO.Nome}', nome = '{objetoDTO.Nome}' where id = '{objetoDTO.Id}';";
            conexao.executarComandos(query);

            query = $"update  candidatura set telefone = '{objetoDTO.Telefone}', telefone = '{objetoDTO.Telefone}' where id = '{objetoDTO.Id}';";
            conexao.executarComandos(query);


            query = $"update  candidatura set email = '{objetoDTO.Email}',  email = '{objetoDTO.Email}' where id = '{objetoDTO.Id}';";
            conexao.executarComandos(query);


            query = $"update  candidatura set escola = '{objetoDTO.foto}',  foto = '{objetoDTO.foto}' where id = '{objetoDTO.Id}';";
            conexao.executarComandos(query);
            

 


      


        public void Delete(inscricaoBLL  objetoDTO)
        {
            query = $"delete from candidatura where id = '{objetoDTO.Id}';";
            conexao.executarComandos(query);
        }

        public DataTable Selecionar()
        {
            query = "select * from candidatura;";
            return conexao.consultarTabelas(query);
        }
    }
}