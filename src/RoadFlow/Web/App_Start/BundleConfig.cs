using System.Web;
using System.Web.Optimization;

namespace WebMvc
{
    public class BundleConfig
    {
        // 有关 Bundling 的详细信息，请访问 http://go.microsoft.com/fwlink/?LinkId=254725
        public static void RegisterBundles(BundleCollection bundles)
        {

            // 使用要用于开发和学习的 Modernizr 的开发版本。然后，当你做好
            // 生产准备时，请使用 http://modernizr.com 上的生成工具来仅选择所需的测试。
            //bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
            //            "~/Scripts/modernizr-*"));

            BundleTable.Bundles.Add(new ScriptBundle("~/bundles/script")
                    .Include("~/Scripts/jquery-1.10.2.js")
                    .Include("~/Scripts/jquery.cookie.js")
                    .Include("~/Scripts/json.js")
                    .Include("~/Scripts/roadui.core.js")
                    .Include("~/Scripts/roadui.button.js")
                    .Include("~/Scripts/roadui.calendar.js")
                    .Include("~/Scripts/roadui.file.js")
                    .Include("~/Scripts/roadui.member.js")
                    .Include("~/Scripts/roadui.dict.js")
                    .Include("~/Scripts/roadui.menu.js")
                    .Include("~/Scripts/roadui.select.js")
                    .Include("~/Scripts/roadui.tab.js")
                    .Include("~/Scripts/roadui.text.js")
                    .Include("~/Scripts/roadui.textarea.js")
                    .Include("~/Scripts/roadui.editor.js")
                    .Include("~/Scripts/roadui.tree.js")
                    .Include("~/Scripts/roadui.validate.js")
                    .Include("~/Scripts/roadui.window.js")
                    .Include("~/Scripts/roadui.dragsort.js")
                    .Include("~/Scripts/roadui.selectico.js")
                    .Include("~/Scripts/roadui.accordion.js")
                    .Include("~/Scripts/roadui.init.js")
                );
        }
    }
}