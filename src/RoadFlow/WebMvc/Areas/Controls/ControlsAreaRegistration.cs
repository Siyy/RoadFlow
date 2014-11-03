using System.Web.Mvc;

namespace WebMvc.Areas.Controls
{
    public class ControlsAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Controls";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            context.MapRoute(
                "Controls_default",
                "Controls/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
