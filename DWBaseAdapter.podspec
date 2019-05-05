
Pod::Spec.new do |s|
  s.name             = 'DWBaseAdapter'
  s.version          = '0.1.0'
  s.summary          = 'A short description of DWBaseAdapter.'
  s.description      = <<-DESC
		       进行tableView 拆分组件化轻量级框架
                       DESC

  s.homepage           = 'https://github.com/378804441/DWAdapter'
  # s.screenshots      = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license            = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { 'dingwei' => '378804441@qq.com' }
  s.source             = { :git => 'https://github.com/378804441/DWAdapter.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.source_files       = 'DWBaseAdapter/Classes/**/*'
  s.ios.deployment_target = '8.0'

  s.subspec 'Handler' do |ss|
    ss.source_files = 'DWBaseAdapter/Classes/**/*.{h,m}'
  end
  
end
