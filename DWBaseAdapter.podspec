
Pod::Spec.new do |s|
  s.name             = 'DWBaseAdapter'
  s.version          = '1.2.1'
  s.summary          = 'A short description of DWBaseAdapter.'
  s.description      = <<-DESC
		       进行tableView 拆分组件化轻量级框架
                       DESC

  s.homepage           = 'https://github.com/378804441/DWAdapter'
  s.license            = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { 'dingwei' => '378804441@qq.com' }
  s.source             = { :git => 'https://github.com/378804441/DWAdapter.git', :tag => s.version.to_s }
  s.source_files       = 'DWBaseAdapter/Classes/*.{h,m}'
  s.ios.deployment_target = '8.0'


  s.subspec 'Category' do |ss|
    ss.source_files = 'DWBaseAdapter/Classes/Category/*.{h,m}'
  end

  s.subspec 'Handler' do |ss|
    ss.source_files = 'DWBaseAdapter/Classes/Handler/*.{h,m}'
  end

  s.subspec 'Config' do |ss|
    ss.source_files = 'DWBaseAdapter/Classes/Config/*.{h,m}'
  end

  s.subspec 'Diff' do |ss|
    ss.source_files = 'DWBaseAdapter/Classes/Diff/*.{h,m}'
  end

  s.subspec 'Model' do |ss|
    ss.source_files = 'DWBaseAdapter/Classes/Model/*.{h,m}'
  end

  s.subspec 'Protocol' do |ss|
    ss.source_files = 'DWBaseAdapter/Classes/Protocol/*.{h,m}'
  end

  s.subspec 'ThreadSafety' do |ss|
    ss.source_files = 'DWBaseAdapter/Classes/ThreadSafety/*.{h,m}'
  end

end
