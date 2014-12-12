using Insight.Database.Schema;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace dbbuilder
{
    class Program
    {
        static void Main(string[] args)
        {
            var schema = new SchemaObjectCollection();
            schema.Load(Assembly.GetExecutingAssembly());

            // autometically create the database

            var DbName = "smithp-financial-db";
            var connectionString = "Data Source=.\\SQLExpress; Database=" + DbName + "; Integrated Security=True";
            SchemaInstaller.CreateDatabase(connectionString);

            // automatically install it, or upgrade it
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                var installer = new SchemaInstaller(connection);
                new SchemaEventConsoleLogger().Attach(installer);
                installer.Install(DbName, schema);
            }
        }
    }
}
