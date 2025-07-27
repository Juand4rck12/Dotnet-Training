using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Restaurant_App.utils
{
    internal class MessageUtils
    {
        public static void showErrorMessage(string message)
        {
            MessageBox.Show(message, "Error", System.Windows.Forms.MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        public static void showInfoMessage(string message)
        {
            MessageBox.Show(message, "Información", System.Windows.Forms.MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        public static void showWarningMessage(string message)
        {
            MessageBox.Show(message, "Advertencia", System.Windows.Forms.MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }
    }
}
