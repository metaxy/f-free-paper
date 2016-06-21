Dir.foreach('./') do |file|
  next if not file.end_with? '.dot'
  `dot -Tpng #{file} > #{File.basename(file, ".dot")}.png`
end
