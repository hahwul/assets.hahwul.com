require "open-uri"
require "json"

@data = URI.parse("https://api.github.com/repos/projectdiscovery/nuclei-templates/releases/latest").read
jobject = JSON.parse @data
body = jobject['body']
arr = body.split("\r\n")


result = {
  "updated": Time.now,
  "templates":[]
}
arr.each do |line|
  if line.include? ' by '
    splited_line = line.gsub("- ","").split(' ')
    result[:templates].push "#{splited_line[0]}"
  end
end

File.write("./deploy/nuclei-latest.json",result.to_json)
