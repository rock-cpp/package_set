Autoproj.manifest.each_autobuild_package do |pkg|
    next if !pkg.kind_of?(Autobuild::Orogen)

    pkg.depends_on 'tools/orogen_cpp_proxies'
    pkg.depends_on 'tools/orogen_model_exporter'
    pkg.orogen_options << '--extensions=cpp_proxies,modelExport'
 end
