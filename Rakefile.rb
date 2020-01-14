

# Publishing the Website

desc 'Publishing the website via rsync'


task :prod do
  # puts 'First, let\'s build your site...'
  # sh "jekyll build"
  # puts "\n"
  puts 'Now let\'s publish it, hold on a sec...'
# personal server setup
  user = 'inallmyd'
  server = 'thenational.reclaimhosting.com'
  path = '/home/inallmyd/public_html' 
  sh "rsync -a -r -e \"ssh -p22\" _site/. #{user}@#{server}:#{path}"
  puts "\n"
  puts 'Bam! Your website is now published!'
  puts "\n"
end