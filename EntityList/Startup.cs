using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EntityList.Startup))]
namespace EntityList
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
