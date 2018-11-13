using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RentaPeliculas.Startup))]
namespace RentaPeliculas
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
