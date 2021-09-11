using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(YemekTarifiSitesi.Startup))]
namespace YemekTarifiSitesi
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
