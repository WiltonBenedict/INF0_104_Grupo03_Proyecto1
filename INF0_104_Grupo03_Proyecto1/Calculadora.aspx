<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="INF0_104_Grupo03_Proyecto1.Calculadora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/botones.css"/>
    <style type="text/css">
        .newStyle1 {
            font-family: "segoe UI";
        }
        .auto-style1 {
            font-family: "segoe UI";
            text-align: center;
        }
        .auto-style2 {
            width: 50%;
            border: 1px solid #666666;
            margin-left: auto;
            margin-right: auto;
            background-color: #f2f2f2
        }
        .auto-style3 {
            text-align: center;
            height: 23px;
        }
        .auto-style22 {
            text-align: center;
        }
        .auto-style32 {
            text-align: center;
            height: 70px;
        }
        .auto-style33 {
            width: 140px;
            text-align: center;
            height: 70px;
        }
        .auto-style34 {
            width: 140px;
            text-align: center;
        }
        .auto-style35 {
            width: 140px;
            height: 23px;
            text-align: center;
        }
        .auto-style36 {
            text-align: center;
            height: 89px;
            background-color: #999999;
        }
        .auto-style37 {
            width: 140px;
            text-align: center;
            height: 89px;
            background-color: #999999;
        }
        .newStyle2 {
            font-family: "segoe UI";
            font-variant: normal;
        }
        .newStyle3 {
            font-family: "segoe UI";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <section>
           <h1 class="auto-style1">Calculadora: Grupo 03</h1>
           <h3 class="auto-style1">Curso: INFO-104. Proyecto 01.</h3>
       </section>
        <section>

            <table class="auto-style2">
                <tr>
                    <td class="auto-style36" colspan="2">
                        <asp:Label ID="tFormula" runat="server" CssClass="newStyle2"></asp:Label>
                    </td>
                    <td class="auto-style37">
                        <asp:Label ID="tConsola" runat="server" CssClass="newStyle3"></asp:Label>
                    </td>
                    <td class="auto-style36" colspan="2">
                        <asp:Label ID="tDato" runat="server" CssClass="newStyle3"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        <asp:Button ID="bttRaiz" runat="server" OnClick="bttRaiz_Click" Text="√ " Height="60px" Width="100px" CssClass="button button1" />
                    </td>
                    <td class="auto-style33">
                        <asp:Button ID="bttBorrar" runat="server" OnClick="bttBorrar_Click" Text="C"  Height="60px" Width="100px" CssClass="button button1" />
                    </td>
                    <td class="auto-style33">
                        <asp:Button ID="bttRemover" runat="server" OnClick="bttRemover_Click" Text="&lt;" Height="60px" Width="100px" CssClass="button button1" />
                    </td>
                    <td class="auto-style33">
                        <asp:Button ID="bttFactorial" runat="server" OnClick="bttFactorial_Click" Text="n!" Height="60px" Width="100px" CssClass="button button1" />
                    </td>
                    <td class="auto-style32">
                        <asp:Button ID="bttDiv" runat="server" OnClick="bttDiv_Click" Text="/" Height="60px" Width="100px" CssClass="button button1" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34">
                        <asp:Button ID="bttElevarXY" runat="server" OnClick="bttElevarXY_Click" Text="xⁿ" Height="60px" Width="100px" CssClass="button button1" />
                    </td>
                    <td class="auto-style34">
                        <asp:Button ID="btt7" runat="server" OnClick="btt7_Click" Text="7" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                    <td class="auto-style34">
                        <asp:Button ID="btt8" runat="server" OnClick="btt8_Click" Text="8" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                    <td class="auto-style34">
                        <asp:Button ID="btt9" runat="server" OnClick="btt9_Click" Text="9" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                    <td class="auto-style22">
                        <asp:Button ID="bttMult" runat="server" OnClick="bttMult_Click" Text="*" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        <asp:Button ID="bttElevar10" runat="server" OnClick="bttElevar10_Click" Text="10ⁿ" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                    <td class="auto-style33">
                        <asp:Button ID="btt4" runat="server" OnClick="btt4_Click" Text="4" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                    <td class="auto-style33">
                        <asp:Button ID="btt5" runat="server" OnClick="btt5_Click" Text="5" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                    <td class="auto-style33">
                        <asp:Button ID="btt6" runat="server" OnClick="btt6_Click" Text="6" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                    <td class="auto-style32">
                        <asp:Button ID="bttRest" runat="server" OnClick="bttRest_Click" Text="-" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34">
                        <asp:Button ID="bttLog" runat="server" OnClick="bttLog_Click" Text="Log" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                    <td class="auto-style34">
                        <asp:Button ID="btt1" runat="server" OnClick="btt1_Click" Text="1" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                    <td class="auto-style34">
                        <asp:Button ID="btt2" runat="server" OnClick="btt2_Click" Text="2" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                    <td class="auto-style34">
                        <asp:Button ID="btt3" runat="server" OnClick="btt3_Click" Text="3" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                    <td class="auto-style22">
                        <asp:Button ID="bttSuma" runat="server" OnClick="bttSuma_Click" Text="+" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style35">
                        <asp:Button ID="bttElevar2" runat="server" OnClick="bttElevar2_Click" Text="x²" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                    <td class="auto-style35">
                        <asp:Button ID="bttMasMenos" runat="server" OnClick="bttMasMenos_Click" Text="+/-" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                    <td class="auto-style35">
                        <asp:Button ID="btt0" runat="server" OnClick="btt0_Click" Text="0" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                    <td class="auto-style35">
                        <asp:Button ID="bttcomma" runat="server" OnClick="bttcomma_Click" Text="," Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="bttIgual" runat="server" OnClick="bttIgual_Click" Text="=" Height="60px" Width="100px" CssClass="button button1"/>
                    </td>
                </tr>
            </table>

        </section>
    </form>
</body>
</html>
