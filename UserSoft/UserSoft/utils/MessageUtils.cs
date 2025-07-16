using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UserSoft.utils
{
    internal class MessageUtils
    {
        public static void ShowErrorMessage(string message)
        {
            MessageBox.Show(message, "Error", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
        }
        public static void ShowInfoMessage(string message)
        {
            MessageBox.Show(message, "Información", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Information);
        }
        public static void ShowWarningMessage(string message)
        {
            MessageBox.Show(message, "Advertencia", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Warning);
        }
    }
}
