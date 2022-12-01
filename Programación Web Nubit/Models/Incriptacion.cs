using System;
using System.Security.Cryptography;
using System.Text; 

namespace Programación_Web_Nubit.Models
{
    public class Incriptacion
    {

        public string encriptar(string mensaje)
        {
            string hash = "Empresa Nubit";
            byte[] data = UTF8Encoding.UTF8.GetBytes(mensaje);

            MD5 md5 = MD5.Create();
            TripleDES tripides = TripleDES.Create();

            tripides.Key = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
            tripides.Mode = CipherMode.ECB;

            ICryptoTransform transform = tripides.CreateEncryptor();
            byte[] result = transform.TransformFinalBlock(data, 0, data.Length);

            return Convert.ToBase64String(result);
        }

        public string desencriptar(string mensajeEn)
        {
            string hash = "Empresa Nubit";
            byte[] data = Convert.FromBase64String(mensajeEn);

            MD5 md5 = MD5.Create();
            TripleDES tripides = TripleDES.Create();

            tripides.Key = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
            tripides.Mode = CipherMode.ECB;

            ICryptoTransform transform = tripides.CreateDecryptor();
            byte[] result = transform.TransformFinalBlock(data, 0, data.Length);

            return UTF8Encoding.UTF8.GetString(result);
        }
    }
}
