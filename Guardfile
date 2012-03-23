# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'spinach' do
  watch(%r|^features/(.*)\.feature|)
  watch(%r|^features/steps/(.*)([^/]+)\.rb|) do |m|
    "features/#{m[1]}#{m[2]}.feature"
  end
end

guard 'rspec', version: 2, all_on_start: false do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }

  # Rails example
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
end
