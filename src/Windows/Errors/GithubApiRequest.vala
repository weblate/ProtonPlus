namespace Windows.Errors {
    public class GithubApiRequest : Gtk.Box {
        public GithubApiRequest (Windows.Main mainWindow) {
            //
            set_orientation (Gtk.Orientation.VERTICAL);

            //
            var btnBack = new Gtk.Button ();
            btnBack.set_icon_name ("go-previous-symbolic");
            btnBack.clicked.connect (() => {
                mainWindow.Notebook.set_current_page (0);
            });

            //
            var headerBar = new Adw.HeaderBar ();
            headerBar.set_centering_policy (Adw.CenteringPolicy.STRICT);
            headerBar.pack_start (btnBack);
            append (headerBar);

            //
            var statusPage = new Adw.StatusPage ();
            statusPage.set_title (_("Github API Request Error"));
            statusPage.set_description (_("Here's a list of the possible reasons why that error happened:\n- You may have reached the GitHub API limit\n- You may be disconnected from the internet\n\nWhy can I still see data then?\nProtonPlus caches the json of each requests in case that problem happens"));
            statusPage.set_icon_name ("computer-fail-symbolic");
            statusPage.set_vexpand (true);
            append (statusPage);
        }
    }
}
