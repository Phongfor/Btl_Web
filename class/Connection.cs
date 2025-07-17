using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Btl_Web
{
    public class Connection
    {

        private static String strCon = @"Data Source=LAPTOP-4UPH6DGG\SQLEXPRESS;Initial Catalog=DB_Web;Integrated Security=True";


        public static SqlConnection GetSqlConnection()
        {
            return new SqlConnection(strCon);
        }

    }
}