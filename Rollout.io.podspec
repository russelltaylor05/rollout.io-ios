Pod::Spec.new do |s|

  s.name         = "Rollout.io"
  s.version      = "0.4.0"
  s.summary      = "Hot patch critical bugs in production apps"
  s.description  = <<-DESC
                   Rollout.io is an SDK that gives developers control over their apps in production,
		   including the ability to remotely fix or contain bugs and quality issues.
                   DESC

  s.homepage     = "http://www.rollout.io/"
  s.license      = {
                      "type" => "Commercial",
		      "text" => "See http://www.rollout.io/"
		   }
  s.authors      = { 
                      "Eyal Keren" => "eyal@rollout.io",
                      "Sergey Ilyevsky" => "sergey@rollout.io"
		   }

  s.requires_arc = false

  s.ios.vendored_frameworks = 'Rollout/Rollout.framework'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }

  s.source       = { :git => "https://github.com/rollout/rollout.io-ios.git", :tag => "0.4.0" }
  s.preserve_paths = "lib/**/*", "install/**/*", "Rollout/RolloutDynamic.m"

end