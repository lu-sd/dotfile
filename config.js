// config for Surfingkeys
// // Remap capital F to af (Open Link in New Tab)
api.unmap("F");
api.map("F", "af");

// Remap s to ;fs (Show 'Focus Scroll Panel’ Hints)
api.unmap("s");
api.map("s", ";fs");
api.unmap("r");
api.map("r", "T"); // select tab
api.unmap("cS");
api.unmap("cc");
api.unmap("cp");
api.unmap("cq");
api.unmap("cs");
api.unmap("cf");
api.unmap(".");

// api.unmap(['E','R','T','c','\.'], /gmail.com|twitter.com|youtube.com|github.com/);
// theme
api.Hints.style(
  "text-align: center; vertical-align: middle;border: 1px solid #303030;  background: #ccffcc; color: #000000; font-size: 12pt;font-family: Arial;",
  "hint",
);

settings.theme = `
.sk_theme {
  font-family: SauceCodePro Nerd Font, Consolas, Menlo, monospace;
  font-size: 10pt;
  background: #f0edec;
  color: #2c363c;
}
.sk_theme tbody {
  color: #f0edec;
}
.sk_theme input {
  color: #2c363c;
}
.sk_theme .url {
  color: #1d5573;
}
.sk_theme .annotation {
  color: #2c363c;
}
.sk_theme .omnibar_highlight {
  color: #88507d;
}
.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
  background: #f0edec;
}
.sk_theme #sk_omnibarSearchResult ul li.focused {
  background: #cbd9e3;
}
#sk_status,
#sk_find {
  font-size: 10pt;
}
`;
