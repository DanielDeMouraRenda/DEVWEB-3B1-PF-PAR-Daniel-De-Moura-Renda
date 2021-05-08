using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Workshop_Tecnologia.DTO
{
    public class InscricaoDTO
    {
        public class inscricaoDTO
        {
            private int id;
            private string nome;
            private string telefone;
            private string email;
            private string foto;


            public int Id
            {
                set { this.id = value; }
                get { return this.id; }
            }

            public string Nome
            {
                set { this.nome = value; }
                get { return this.nome; }
            }

            public string Telefone
            {
                set { this.telefone = value; }
                get { return this.telefone; }
            }

            public string Email
            {
                set { this.email = value; }
                get { return this.email; }
            }

            

            public string Vaga
            {
                set { this.foto = value; }
                get { return this.foto; }
            }

        }
    }

}

}
    