import qbs 1.0
import qbs.TextFile

Product {
    name: "plymouth"
    type: "plymouth.output"

    Rule {
        inputs: ["plymouth.input"]

        Artifact {
            filePath: input.fileName.replace(".in", "")
            fileTags: ["plymouth.output"]
        }

        prepare: {
            var cmd = new JavaScriptCommand();
            cmd.description = "generate " + output.fileName;
            cmd.highlight = "filegen";
            cmd.vars = {"THEME_DIR": "/usr/share/plymouth/themes/lirios"};
            cmd.sourceCode = function() {
                var file = new TextFile(input.filePath, TextFile.ReadOnly);
                var contents = file.readAll();
                file.close();

                for (var i in vars)
                    contents = contents.replace(new RegExp('@' + i + '@(?!\w)', 'g'), vars[i]);

                file = new TextFile(output.filePath, TextFile.WriteOnly);
                file.write(contents);
                file.close();
            }
            return [cmd];
        }
    }

    Group {
        name: "Source theme"
        files: ["lirios.plymouth.in"]
        fileTags: ["plymouth.input"]
    }

    Group {
        name: "Final theme"
        qbs.install: true
        qbs.installDir: "/usr/share/plymouth/themes/lirios"
        fileTags: ["plymouth.output"]
    }

    Group {
        name: "Images"
        files: ["*.png"]
        qbs.install: true
        qbs.installDir: "/usr/share/plymouth/themes/lirios"
    }
}
