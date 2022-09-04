using System.Data;

namespace OBTS
{
    public interface IDbConnectionProvider
    {
        IDbConnection GetConnection();
    }
}
