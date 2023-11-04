<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="INF0_104_Grupo03_Proyecto1.Calculadora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: "segoe UI";
        }
        .auto-style1 {
            font-family: "segoe UI";
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            border: 1px solid #666666;
        }
        .auto-style3 {
            text-align: center;
            height: 23px;
        }
        .auto-style7 {
            width: 287px;
            height: 23px;
            text-align: center;
        }
        .auto-style10 {
            width: 233px;
            text-align: center;
        }
        .auto-style11 {
            width: 233px;
            height: 23px;
            text-align: center;
        }
        .auto-style15 {
            width: 259px;
            text-align: center;
        }
        .auto-style16 {
            width: 259px;
            height: 23px;
            text-align: center;
        }
        .auto-style17 {
            width: 287px;
            text-align: center;
        }
        .auto-style20 {
            height: 23px;
            width: 235px;
            text-align: center;
        }
        .auto-style21 {
            width: 235px;
            text-align: center;
        }
        .auto-style22 {
            text-align: center;
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
                    <td class="auto-style3" colspan="2">
                        <asp:Label ID="tFormula" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="tConsola" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3" colspan="2">
                        <asp:Label ID="tDato" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Button ID="bttRaiz" runat="server" OnClick="bttRaiz_Click" Text="√ " />
                    </td>
                    <td class="auto-style15">
                        <asp:Button ID="bttBorrar" runat="server" OnClick="bttBorrar_Click" Text="C" />
                    </td>
                    <td class="auto-style17">
                        <asp:Button ID="bttRemover" runat="server" OnClick="bttRemover_Click" Text="&lt;" />
                    </td>
                    <td class="auto-style21">
                        <asp:Button ID="bttFactorial" runat="server" OnClick="bttFactorial_Click" Text="n!" />
                    </td>
                    <td class="auto-style22">
                        <asp:Button ID="bttDiv" runat="server" OnClick="bttDiv_Click" Text="/" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Button ID="bttElevarXY" runat="server" OnClick="bttElevarXY_Click" Text="xⁿ" />
                    </td>
                    <td class="auto-style15">
                        <asp:Button ID="btt7" runat="server" OnClick="btt7_Click" Text="7" />
                    </td>
                    <td class="auto-style17">
                        <asp:Button ID="btt8" runat="server" OnClick="btt8_Click" Text="8" />
                    </td>
                    <td class="auto-style21">
                        <asp:Button ID="btt9" runat="server" OnClick="btt9_Click" Text="9" />
                    </td>
                    <td class="auto-style22">
                        <asp:Button ID="bttMult" runat="server" OnClick="bttMult_Click" Text="*" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Button ID="bttElevar10" runat="server" OnClick="bttElevar10_Click" style="height: 26px" Text="10ⁿ" />
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="btt4" runat="server" OnClick="btt4_Click" Text="4" />
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="btt5" runat="server" OnClick="btt5_Click" Text="5" />
                    </td>
                    <td class="auto-style20">
                        <asp:Button ID="btt6" runat="server" OnClick="btt6_Click" Text="6" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="bttRest" runat="server" OnClick="bttRest_Click" Text="-" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Button ID="bttLog" runat="server" OnClick="bttLog_Click" Text="Log" />
                    </td>
                    <td class="auto-style15">
                        <asp:Button ID="btt1" runat="server" OnClick="btt1_Click" Text="1" />
                    </td>
                    <td class="auto-style17">
                        <asp:Button ID="btt2" runat="server" OnClick="btt2_Click" Text="2" />
                    </td>
                    <td class="auto-style21">
                        <asp:Button ID="btt3" runat="server" OnClick="btt3_Click" Text="3" />
                    </td>
                    <td class="auto-style22">
                        <asp:Button ID="bttSuma" runat="server" OnClick="bttSuma_Click" Text="+" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Button ID="bttElevar2" runat="server" OnClick="bttElevar2_Click" Text="x²" />
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="bttMasMenos" runat="server" OnClick="bttMasMenos_Click" Text="+/-" />
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="btt0" runat="server" OnClick="btt0_Click" Text="0" />
                    </td>
                    <td class="auto-style20">
                        <asp:Button ID="bttcomma" runat="server" OnClick="bttcomma_Click" Text="," />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="bttIgual" runat="server" OnClick="bttIgual_Click" Text="=" />
                    </td>
                </tr>
            </table>

        </section>
    </form>
</body>
</html>
