using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AjaxWebApplication.Startup))]
namespace AjaxWebApplication
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
