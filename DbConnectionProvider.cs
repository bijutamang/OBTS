using Microsoft.Data.SqlClient;
using System.Data;

namespace OBTS
{
    public class DbConnectionProvider : IDbConnectionProvider
    {
        private string _connectionString = @"server=BHX\FIN; database=Inventory;user=sa;password=Bb(_22;";

        public IDbConnection GetConnection() => new SqlConnection(_connectionString);
    }
}
