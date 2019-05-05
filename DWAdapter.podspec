

Pod::Spec.new do |s|
    s.name             = 'DWAdapter'
    s.version          = '0.1.0'
    s.summary          = 'A short description of DWAdapter.'
    s.description      = <<-DESC
                         进行tableView 拆分组件化轻量级框架
                         DESC

    s.homepage         = 'https://github.com/378804441/DWAdapter'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'dingwei' => '378804441@qq.com' }
    s.source           = { :git => 'https://github.com/378804441/DWAdapter.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'
    s.source_files = 'DWAdapter/Classes/**/*'
    
end
