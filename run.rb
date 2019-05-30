require 'erb'

File.foreach('list.txt') do |line|
  @line = line.strip

  system "git checkout master"
  system "git checkout #{@line}"

  ['./alpine'].each do |dir_path|
    # ['./', './alpine'].each do |dir_path|
    File.open("#{dir_path}/Dockerfile.erb") do |erb|
      template = ERB.new(erb.read)
      File.open("#{dir_path}/Dockerfile", 'w+') do |docker|
        docker.write template.result
      end
    end

    system "git commit -a --amend -m 'add #{line}'"
    system "git push -f -u origin HEAD"
  end
end
