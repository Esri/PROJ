from conans import ConanFile


class PROJConan(ConanFile):
    name = "proj"
    version = "9.6.2"
    url = "https://github.com/Esri/PROJ"
    license = "https://github.com/Esri/PROJ/tree/master?tab=License-1-ov-file"
    description = "PROJ is a generic coordinate transformation software, that transforms coordinates from one coordinate reference system (CRS) to another."

    # RTC specific triple
    settings = "platform_architecture_target"

    def package(self):
        base = self.source_folder + "/"
        relative = "3rdparty/PROJ/"

        # headers
        self.copy("*.h", src=base + "src", dst=relative + "src")

        # libraries
        output = (
            "output/" + str(self.settings.platform_architecture_target) + "/staticlib"
        )
        self.copy("*" + self.name + "*", src=base + "../../" + output, dst=output)
