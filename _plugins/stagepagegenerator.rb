module Jekyll
    class StagePage < Page
        def initialize(site, base, dir, stage)
            @site = site
            @base = base
            @dir = dir
            @page_name = stage['title'] + '.html'

            self.process(@page_name)
            self.read_yaml(File.join(base, '_layouts'), 'stage.html')

            self.data['stage'] = stage
        end
    end

    class StagePageGenerator < Generator
        safe true

        def generate(site)
            dir = 'stage'
            if site.data['stages']
                site.data['stages'].each_entry do |stage|
                    site.pages << StagePage.new(site, site.source, dir, stage)
                end
            end
        end
    end
end
