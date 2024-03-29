using System;
using System.Configuration;
using System.Security.Permissions;

namespace AceSoft.RetailPlus
{

	[StrongNameIdentityPermissionAttribute(SecurityAction.LinkDemand,
		 PublicKey = "002400000480000094000000060200000024000" +
		 "052534131000400000100010053D785642F9F960B43157E0380" +
		 "F393BEE53E8DFAFBF441366C1B6F8B48D9DDF0D527B1F3B21EA" +
		 "E85D2FDB664CE81EB8A87DBE4C589D6F4202FE2B7D4B978BB69" +
		 "684874612CB9B8DB7A0339400A9C4E68277884B07817363D242" +
		 "E3696F9FACDBEA831810AE6DC9EDCA91A7B5DA12FE7BF65D113" +
		 "FF52834EAFB5A7A1FDFD5851A3")]
	public class DBConnection
	{
		static DBConnection()
		{

		}

        public static string ServerIP()
        {
            string ServerIP = "localhost";
            
            if (System.Configuration.ConfigurationManager.AppSettings["ServerIP"] != null)
            {
                try { ServerIP = System.Configuration.ConfigurationManager.AppSettings["ServerIP"].ToString(); }
                catch { }
            }

            return ServerIP;
        }

        public static string MasterServerIP()
        {
            string ServerIP = "localhost";

            if (System.Configuration.ConfigurationManager.AppSettings["MasterServerIP"] != null)
            {
                try { ServerIP = System.Configuration.ConfigurationManager.AppSettings["MasterServerIP"].ToString(); }
                catch { }
            }

            return ServerIP;
        }

        public static string DBName()
        {
            string DBName = "pos";

            if (System.Configuration.ConfigurationManager.AppSettings["DBName"] != null)
            {
                try { DBName = System.Configuration.ConfigurationManager.AppSettings["DBName"].ToString(); }
                catch { }
            }

            return DBName;
        }

        public static string MasterDBName()
        {
            string DBName = "pos_master";

            if (System.Configuration.ConfigurationManager.AppSettings["MasterDBName"] != null)
            {
                try { DBName = System.Configuration.ConfigurationManager.AppSettings["MasterDBName"].ToString(); }
                catch { }
            }

            return DBName;
        }

        public static Int32 DBPort()
        {
            Int32 DBPort = 3306;

            if (System.Configuration.ConfigurationManager.AppSettings["DBPort"] != null)
            {
                try { Int32.TryParse(System.Configuration.ConfigurationManager.AppSettings["DBPort"], out DBPort); }
                catch { }

                if (DBPort == 0) DBPort = 3306;
            }

            return DBPort;
        } 

        //public static string ConnectionString()
        //{
        //    return "Server=" + DBConnection.ServerIP() + ";Port=" + DBConnection.DBPort().ToString() + ";Database=" + DBConnection.DBName() + ";Uid=POSUser;Pwd=pospwd; Encrypt = true";
        //    //return "Data Source=" + DBConnection.DBName() + ";Password=pospwd;User ID=POSUser;Location=" + DBConnection.ServerIP() + ";Port=" + DBConnection.DBPort().ToString() + ";Extended Properties=";
        //} 

        //public static string ConnectionString(string ServerIP)
        //{
        //    return "Server=" + ServerIP + ";Port=" + DBConnection.DBPort().ToString() + ";Database=" + DBConnection.DBName() + ";Uid=POSUser;Pwd=pospwd; Encrypt = true";
        //    //return "Data Source=" + DBConnection.DBName() + ";Password=pospwd;User ID=POSUser;Location=" + clsServerIP + ";Port=" + DBConnection.DBPort().ToString() + ";Extended Properties=";
        //}

        //public static string ConnectionString(string ServerIP, string Port)
        //{
        //    return "Server=" + ServerIP + ";Port=" + Port + ";Database=" + DBConnection.DBName() + ";Uid=POSUser;Pwd=pospwd; Encrypt = true";
        //    //return "Data Source=" + DBConnection.DBName() + ";Password=pospwd;User ID=POSUser;Location=" + clsServerIP + ";Port=" + clsPort + ";Extended Properties=";
        //}

        public static string ConnectionString(string ServerIP = null, string Port = null, string DBName = null, Int32 ConnectionTimeOut = 180, string username="", string password ="")
        {
            if (string.IsNullOrEmpty(username)) username = "POSUser";
            if (string.IsNullOrEmpty(password)) password = "pospwd";

            return "Server=" + (string.IsNullOrEmpty(ServerIP) ? DBConnection.ServerIP() : ServerIP) +
                   ";Port=" + (string.IsNullOrEmpty(Port) ? DBConnection.DBPort().ToString() : Port) +
                   ";Database=" + (string.IsNullOrEmpty(DBName) ? DBConnection.DBName() : DBName) +
                   ";Uid=" + (string.IsNullOrEmpty(username) ? "POSUser" : username) +
                   ";Pwd=" + (string.IsNullOrEmpty(password) ? "pospwd" : password) + 
                   ";Encrypt = true" +
                   ";Connection Timeout=" + ConnectionTimeOut.ToString();

            //return "Data Source=" + clsDBName + ";Password=pospwd;User ID=POSUser;Location=" + clsServerIP + ";Port=" + clsPort + ";Extended Properties=";
        }

        public static string MasterConnectionString(string ServerIP = null, string Port = null, string DBName = null)
        {
            return "Server=" + (ServerIP == null || ServerIP == "" ? DBConnection.MasterServerIP() : ServerIP) +
                ";Port=" + (Port == null || Port == "" ? DBConnection.DBPort().ToString() : Port) +
                ";Database=" + (DBName == null || DBName == "" ? DBConnection.MasterDBName() : DBName) +
                    ";Uid=POSUser;Pwd=pospwd; Encrypt = true; Connection Timeout=180";
            //return "Data Source=" + clsDBName + ";Password=pospwd;User ID=POSUser;Location=" + clsServerIP + ";Port=" + clsPort + ";Extended Properties=";
        }

        public static string AuditConnectionString(string ServerIP = null, string Port = null, string DBName = null)
        {
            return "Server=" + (ServerIP == null || ServerIP == "" ? DBConnection.ServerIP() : ServerIP) +
                ";Port=" + (Port == null || Port == "" ? DBConnection.DBPort().ToString() : Port) +
                ";Database=" + (DBName == null || DBName == "" ? DBConnection.DBName() : DBName) +
                    ";Uid=POSAuditUser;Pwd=posauditpwd; Encrypt = true; Connection Timeout=180";
            //return "Data Source=" + clsDBName + ";Password=pospwd;User ID=POSUser;Location=" + clsServerIP + ";Port=" + clsPort + ";Extended Properties=";
        }
	}
}
