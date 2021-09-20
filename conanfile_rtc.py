from conans import ConanFile


class PROJConan(ConanFile):
    name = "PROJ"
    version = "v8.1.0"
    url = "https://github.com/Esri/PROJ/tree/runtimecore"
    license = "https://github.com/OSGeo/PROJ/blob/master/COPYING"
    description = "PROJ"

    # RTC specific triple
    settings = "platform_architecture_target"

    def package(self):
        base = self.source_folder + "src/"
        relative = "3rdparty/PROJ/"

        # headers
        self.copy("src/proj.h", src=base + "src", dst=relative)
 
        # libraries
        output = "output/" + str(self.settings.platform_architecture_target) + "/staticlib"
        self.copy("*" + self.name + "*", src=base + "../../" + output, dst=output)
