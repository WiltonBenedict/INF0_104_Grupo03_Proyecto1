using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace INF0_104_Grupo03_Proyecto1
{
    public partial class Calculadora : System.Web.UI.Page
    {
        //INFO-104. Proyecto 01. Grupo 03.
        //Instacia de la clase global
        //Global global = new Global();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btt0_Click(object sender, EventArgs e)
        {
            ValidarControl();
            tDato.Text += "0";

        }

        protected void btt1_Click(object sender, EventArgs e)
        {
            ValidarControl();
            tDato.Text += "1";
        }

        protected void btt2_Click(object sender, EventArgs e)
        {
            ValidarControl();
            tDato.Text += "2";
        }

        protected void btt3_Click(object sender, EventArgs e)
        {
            ValidarControl();
            tDato.Text += "3";
        }

        protected void btt4_Click(object sender, EventArgs e)
        {
            ValidarControl();
            tDato.Text += "4";
        }

        protected void btt5_Click(object sender, EventArgs e)
        {
            ValidarControl();
            tDato.Text += "5";
        }

        protected void btt6_Click(object sender, EventArgs e)
        {
            ValidarControl();
            tDato.Text += "6";
        }

        protected void btt7_Click(object sender, EventArgs e)
        {
            ValidarControl();
            tDato.Text += "7";
        }

        protected void btt8_Click(object sender, EventArgs e)
        {
            ValidarControl();
            tDato.Text += "8";
        }

        protected void btt9_Click(object sender, EventArgs e)
        {
            ValidarControl();
            tDato.Text += "9";
        }

        protected void bttIgual_Click(object sender, EventArgs e)
        {
            //Ejemplo
            ValidarControl();
            if (Global.funcion == 1)
            {
                Global.val2 = Convert.ToDouble(tDato.Text);
                Global.resultado = Global.val1 + Global.val2;
                tFormula.Text = $"{Global.val1} + {Global.val2}";
                tDato.Text = $"{Global.resultado}";
                Global.funcion = 0; //Reinicia la funcion a cero para prevenir que entre en la estructura selectiva de igual.
                Global.control = true; //Esto previene que se inicie una nueva operacion con numeros en la calculadora
                //Si Global.control es true, presionar cualquier otra tecla causara que se borren los datos dentro de los textos para 
                //iniciar una nueva operacion.
            }
            //Otras operaciones seguirian con else if
        }
        // OPERACIONES DE DOS VALORES
        protected void bttSuma_Click(object sender, EventArgs e)
        {
            //NOTA: Operaciones de 2 valores Ejemplo
            ValidarControl();
            if (tDato.Text.Length > 0)
            {
                Global.funcion = 1;
                //Guarda el valor del texto en val 1, limpia 
                //el label tDato para introducir nuevos datos
                //y asigna funcion 1 que indica a igual que
                //la operacion es una suma
                Global.val1 = Convert.ToDouble(tDato.Text);
                tDato.Text = string.Empty;
                tConsola.Text = "Suma";
            }
            else
            {
                //Mensaje de error en consola que no hay datos
            }
        }

        protected void bttRest_Click(object sender, EventArgs e)
        {
            ValidarControl();
        }

        protected void bttMult_Click(object sender, EventArgs e)
        {
            ValidarControl();
        }

        protected void bttDiv_Click(object sender, EventArgs e)
        {
            ValidarControl();
        }

        protected void bttElevarXY_Click(object sender, EventArgs e)
        {
            ValidarControl();
        }

        //OPERACIONES DE UN VALOR
        protected void bttLog_Click(object sender, EventArgs e)
        {
            ValidarControl();
        }

        protected void bttElevar10_Click(object sender, EventArgs e)
        {
            ValidarControl();
        }

        protected void bttRaiz_Click(object sender, EventArgs e)
        {
            ValidarControl();
        }

        protected void bttFactorial_Click(object sender, EventArgs e)
        {
            ValidarControl();
        }

        protected void bttElevar2_Click(object sender, EventArgs e)
        {
            ValidarControl();
        }

        //METODOS DE CONCATENACION
        protected void bttMasMenos_Click(object sender, EventArgs e)
        {
            ValidarControl();
            if (tDato.Text.Contains('-'))
            {
                tDato.Text = tDato.Text.Substring(1);
                //Se asume que - esta al principio del string y lo elimina
            }
            else
            {
                tDato.Text = "-" + tDato.Text;
                //Agrega el menos al principio del string
            }
        }

        protected void bttcomma_Click(object sender, EventArgs e)
        {
            ValidarControl();
            if (tDato.Text.Contains("."))
            {
                tConsola.Text = "Accion no posible";
            }
            else if (tDato.Text.Contains('-') && tDato.Text.Length == 1)
            {
                tConsola.Text = "Accion no posible";
                //Excepcion para prevenir (-,)
            }
            else
            {
                tDato.Text = tDato.Text + ".";
            }
        }

        protected void bttRemover_Click(object sender, EventArgs e)
        {
            ValidarControl();
            if (tDato.Text.Length == 0)
            {
                tConsola.Text = "Nada que remover";
            }
            else
            {
                //Se remueve el ultimo caracter del string
                tDato.Text = tDato.Text.Substring(0, tDato.Text.Length - 1);
            }
        }

        protected void bttBorrar_Click(object sender, EventArgs e)
        {
            //Limpia todas las variables
            ReiniciarVariables();
        }
        
        private void ValidarControl()
        {
            if(Global.control == true)
            {
                //Se activa solo en caso una operacion ya fue completada.
                ReiniciarVariables();
            }
        }

        private void ReiniciarVariables()
        {
            tFormula.Text = string.Empty;
            tDato.Text = string.Empty;
            tConsola.Text = string.Empty;
            Global.funcion = 0;
            Global.val1 = 0;
            Global.val2 = 0;
            Global.resultado = 0;
            Global.control = false;
        }


    }
}