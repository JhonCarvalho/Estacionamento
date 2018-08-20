using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Estacionamento
{
    public partial class CadastroCarro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string marca      = txtMarca.Text;
            string cor        = txtCor.Text;
            string modelo     = txtModelo.Text;
            int anoModelo     = Convert.ToInt32(txtAnoModelo.Text);
            int anoFabricacao = Convert.ToInt32(txtAnoFabricacao.Text);


            TB_CARRO cr = new TB_CARRO()
            {
                Marca = marca,
                Cor = cor,
                AnoFabricacao = anoModelo,
                AnoModelo = anoModelo,
                Modelo = modelo
            };

            dbEstacionamentoEntities contextEstacionamento = new dbEstacionamentoEntities();
            string valor = Request.QueryString["idItem"];

                 

            if (String.IsNullOrEmpty(valor))
            {
                contextEstacionamento.TB_CARRO.Add(cr);
                lblmsg.Text = "Registro Inserido!";
                Clear();
            }
            else
            {
                int id = Convert.ToInt32(valor);
                TB_CARRO carro = contextEstacionamento.TB_CARRO.First(c => c.Id == id);
                carro.Marca = cr.Marca;
                carro.Cor = cr.Cor;
                carro.AnoFabricacao = cr.AnoModelo;
                carro.AnoModelo = cr.AnoModelo;
                carro.Modelo = cr.Modelo;

                lblmsg.Text = "Registro Alterado!";
            }

            contextEstacionamento.SaveChanges();
        }

        private void Clear()
        {
            txtMarca.Text = "";
            txtCor.Text = "";
            txtModelo.Text = "";
            txtAnoModelo.Text = "";
            txtAnoFabricacao.Text = "";
        }

    }
}
