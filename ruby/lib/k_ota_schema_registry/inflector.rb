module KOtaSchemaRegistry
  class Inflector < Zeitwerk::GemInflector
    def camelize(basename, abspath)
      if basename =~ /\A.*_pb$/
        basename.gsub("_pb", '').camelize
      else
        super
      end
    end
  end
end